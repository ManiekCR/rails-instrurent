class User < ApplicationRecord
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_many :bookings, dependent: :destroy
  has_many :instruments, dependent: :destroy
  mount_uploader :photo, PhotoUploader
end
