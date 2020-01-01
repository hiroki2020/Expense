class UserProgate < ApplicationRecord
  validates :name, {presence: true}
  validates :email, {presence: true}
  validates :password, {presence: true}

  def posts
    return Post.where(user_progate_id: self.id)
  end
  
end
