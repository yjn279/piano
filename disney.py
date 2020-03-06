request = [6,8,14,17,18,21,22,23,24,25,27,28,29]

individual = 100
generation = 100
time_open  =  8.0 * 60
time_close = 22.0 * 60


# インスタンスの生成
fp = FastPass(request, time_open,time_close)
sb = StandBy(request, time_open, time_close)

# データの読み込み
fp.read_time('FP')
sb.read_time('WaitingTime')
sb.read_coordinate('Coordinate', 2)

# 個体群の生成
fp.generate(individual)
sb.generate(individual)

# ヒートマップの作成
# heatmap = np.zeros((generation, individual))

# 交配
for i in range(generation):
    
    ticket = fp.calculate_fastpass()
    sb.calculate_standby(ticket, fp.order)

    score, evaluation = sb.score()
    # heatmap[i] = score
    
    fp.crossover(evaluation)
    sb.crossover(evaluation)

# ヒートマップ・ルートの表示
# plt.imshow(heatmap, cmap='plasma')
# plt.show()
index = score.argmax()
best  = np.array([sb.order[index], fp.order[index], ticket[index]])
print(best[0])
print(best[1])
print(best[2])
print(score.max())