class Post < ApplicationRecord
  belongs_to :user
  validates :content, length: { minimum: 3, maximum: 300 }
end
