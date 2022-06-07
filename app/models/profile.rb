class Profile < ApplicationRecord
  belongs_to :user

  validates :name, :phone, :age, :bio, :address, :user_type, presence: true
  validates :bio, length: { minimum: 20 }

  has_one_attached :photo

  before_validation :set_default_type

  private

  def set_default_type
    self.user_type = "User" if user_type.nil?
  end
end
