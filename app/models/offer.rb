class Offer < ApplicationRecord
  belongs_to :user
  belongs_to :sport
  belongs_to :chatroom

  has_many :bookings, dependent: :destroy
  # has_many :offer_sports
  # has_many :sports, through: :offer_sports

  has_one_attached :photo

  geocoded_by :location

  after_validation :geocode, if: :will_save_change_to_location?

  before_validation :build_related_chatroom, on: :create

  # accepts_nested_attributes_for :chatroom

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

  private

  def build_related_chatroom
    self.chatroom = build_chatroom(name: "#{title} Chatroom")
  end
end
