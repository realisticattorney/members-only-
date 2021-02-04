class User < ApplicationRecord
  has_many :posts
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
         
         validates_presence_of :username
         validates_uniqueness_of :username  
         validates_length_of :username, :minimum => 5, :maximum => 10 
end
