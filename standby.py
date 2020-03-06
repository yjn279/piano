class StandBy(Route):

    def read_coordinate(self, file, walking_speed):

        coord   = pd.read_csv(file + '.csv', usecols=[1,2])
        coord_x = np.tile(coord['���o'], (len(coord),1))
        coord_y = np.tile(coord['�k��'], (len(coord),1))

        distance = Geod(ellps='WGS84').inv(coord_x, coord_y, coord_x.T, coord_y.T)
        distance = distance[2] / (walking_speed * 1000 / 60)  # ���s���x�ikm/h �� m/min�j
    
        self.distance = distance
    
    def calculate_standby(self, ticket, fp_order):

        time_loss  = np.full(len(self.order), self.time_open)
        time_lost  = time_loss.copy()
        time_loss += self.distance[0, self.order[:,0]]

        for i in range(len(self.request)-1):

            t          = time_loss.reshape(-1,1)
            index      = np.argmax(np.where(self.index<=t,self.index,0), axis=1)
            a          = np.where(self.order[:,i].reshape(-1,1) == fp_order)  # ticket�̃C���f�b�N�X���擾
            time_loss += np.where((ticket[a[0],a[1]]<=time_loss)&(time_loss<=ticket[a[0],a[1]]+60), 20, self.time[self.order[:,i],index])

            # �p���[�h
            parade    = np.where((ticket[a[0],a[1]]<=1235)&(1235<=ticket[a[0],a[1]]+60), 1235+20, 1235+self.time[self.order[:,i],26])
            time_loss = np.where((time_lost<=1200)&(1200<time_loss), parade, time_loss)  # time_walking���ǂ�����ē���邩�H
            time_lost = time_loss.copy()

            time_loss += self.distance[self.order[:,i], self.order[:,i+1]]

        a          = np.where(self.order[:,-1].reshape(-1,1) == fp_order)
        time_loss += np.where((ticket[a[0],a[1]]<=time_loss)&(time_loss<=ticket[a[0],a[1]]+60), 20, self.time[self.order[:,-1],index])
        parade     = np.where((ticket[a[0],a[1]]<=1235)&(1235<=ticket[a[0],a[1]]+60), 1235+20, 1235+self.time[self.order[:,-1],26])
        time_loss  = np.where((time_lost<=1200)&(1200<time_loss), parade, time_loss)  # time_walking���ǂ�����ē���邩�H
        time_loss += self.distance[self.order[:,-1], 0]

        self.time_loss = time_loss.copy()
        # return time_loss.copy()

    def score(self):
        score      = self.time_close - self.time_loss
        evaluation = (score - min(score)) / (max(score) - min(score))  if max(score)-min(score) > 0 else print('Finish!')
        evaluation = evaluation / np.sum(evaluation)
        return score, evaluation