class Offer < ApplicationRecord
  belongs_to :user
  has_many :bookings, dependent: :destroy
  geocoded_by :location
  after_validation :geocode, if: :will_save_change_to_location?
  has_one_attached :photo
  # validates :price,  presence: true
  validates :title, presence: true
  validates :description, presence: true
  validates :duration, presence: true
  validates :location, presence: true
   include PgSearch::Model
   pg_search_scope :search_by_title_and_location,
     against: [ :title, :location ],
     using: {
       tsearch: { prefix: true }
     }
end
