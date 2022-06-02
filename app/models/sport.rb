class Sport < ApplicationRecord
  has_many :offer_sports
  has_many :offers, through: :offer_sports
end
