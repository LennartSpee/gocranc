class Sport < ApplicationRecord
  has_many :offers
  has_one_attached :photo
end
