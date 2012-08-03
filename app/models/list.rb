class List < ActiveRecord::Base
  attr_accessible :name
  
  has_many :tasks, dependent: :destroy
  
  validates :name, presence: true, length: { minimum: 3 } 
end
