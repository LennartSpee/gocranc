class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_many :offers
  has_many :bookings, through: :offers

  has_many :chatrooms
  has_many :messages, dependent: :destroy
  has_one :profile
end
