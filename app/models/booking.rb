class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :offer

  has_many :reviews, dependent: :destroy
  validates :timing, presence: true
end
