class Post < ApplicationRecord
  validates :content, {presence: true}
  validates :amount, {presence: true}  
end
