class Profile < ApplicationRecord
  belongs_to :user
  validates :name, presence: true
  validates :phone, presence: true
  validates :age, presence: true
  validates :bio, length: { minimum: 20 }, presence: true
  validates :address, presence: true
  validates :user_type, presence: true
  #validates :social_medias_urls, presence: true
  has_one_attached :photo
end
