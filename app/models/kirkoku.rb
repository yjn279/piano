class Kirkoku < ApplicationRecord
    validates :user_id, {presence: true}
    
#    def posts
#         return Kirkoku.where(user_id: self.id)
#       end
    
    
end
