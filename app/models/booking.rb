class Booking < ApplicationRecord
  belongs_to :instrument
  belongs_to :user
  enum status: [:pending, :accepted, :denied]
end
