class Appointment < ActiveRecord::Base
  attr_accessible :description, :due_date, :due_time

  validates :description, presence: true, length: { maximum: 140 }
  validates :due_date, presence: true
  validates :due_time, presence: true 
end
