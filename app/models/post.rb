class Post < ApplicationRecord
  validates :content, {presence: true}
  validates :amount, {presence: true}  
  validates :user_progate_id, {presence: true}

  def user_progate
    return UserProgate.find_by(id: self.user_progate_id)
  end

end
