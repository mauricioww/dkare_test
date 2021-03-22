class Appointment < ApplicationRecord
  # Foreign keys
  belongs_to :user
  belongs_to :doctor
  validates :time, presence: true
end
