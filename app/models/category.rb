class Category < ApplicationRecord
  validates_presence_of :title, :message => " field can't be blank. "
  validates_presence_of :details, :message => " field can't be blank. "

    belongs_to :user
    has_many :tasks
end
