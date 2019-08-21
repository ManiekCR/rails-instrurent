class Instrument < ApplicationRecord
  belongs_to :user
  has_many :bookings, dependent: :destroy

  validates :name, :category, :description, :address, :price, presence: true
  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?
end
