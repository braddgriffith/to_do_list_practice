class Task < ActiveRecord::Base
  attr_accessible :name, :details, :completed
  
  belongs_to :list
  
  validates :name, presence: true, length: { minimum: 3 }
  validates :details, presence: true, length: { minimum: 5 }
end
