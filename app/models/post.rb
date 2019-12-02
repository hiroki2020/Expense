class Post < ApplicationRecord
  belongs_to :users
  validates :content, {presence: true}
  validates :amount, {presence: true}  
end
