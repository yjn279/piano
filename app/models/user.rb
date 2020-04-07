class User < ApplicationRecord
    has_secure_password
    # nameカラムに関するバリデーション
    validates :name, {presence: true}
    
    # emailカラムに関するバリデーション
    validates :email , {presence: true,uniqueness: true}
    
    
    
    def posts
      return Post.where(user_id: self.id)
    end
end
