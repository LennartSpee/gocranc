class Offer < ApplicationRecord
  belongs_to :user
  has_many :bookings, dependent: :destroy
  geocoded_by :location
  after_validation :geocode, if: :will_save_change_to_location?
  # has_one_attached :photo
  # validates :price,  presence: true
  validates :title, presence: true
  validates :description, presence: true
  validates :duration, presence: true
  validates :location, presence: true
end
