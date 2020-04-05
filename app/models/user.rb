class User < ApplicationRecord
    
    # nameカラムに関するバリデーション
    validates :name, {presence: true}
    
    # emailカラムに関するバリデーション
    validates :email , {presence: true,uniqueness: true}
    
    validates :password, {presence: true}
    
    def posts
      return Post.where(user_id: self.id)
    end
end
