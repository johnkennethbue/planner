class Task < ApplicationRecord
  validates_presence_of :title, :message => " field can't be blank. "
  validates_presence_of :description, :message => " field can't be blank. "

  belongs_to :user
  belongs_to :category
end
