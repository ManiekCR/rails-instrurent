class Booking < ApplicationRecord
  belongs_to :instrument
  belongs_to :user
  validates :start_date, :end_date, presence: true
  enum status: [:pending, :accepted, :denied]
end
