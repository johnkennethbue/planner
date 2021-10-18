class User < ApplicationRecord
  has_many :categories
  has_many :tasks
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable, :recoverable, :rememberable,
  :validatable
  
         validates_presence_of :name, :message => " field can't be blank. "
         validates_presence_of :surname, :message => " field can't be blank. "
         validates_confirmation_of :password
end
