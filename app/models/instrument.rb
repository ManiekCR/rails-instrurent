class Instrument < ApplicationRecord
  belongs_to :user
  has_many :bookings, dependent: :destroy
  mount_uploader :photo, PhotoUploader
  validates :name, :category, :description, :address, :price, presence: true
  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?

  include PgSearch::Model
  pg_search_scope :search_by_name_and_category_and_description,
    against: [:name, :category, :description],
    using: {
      tsearch: { prefix: true }
    }
end
