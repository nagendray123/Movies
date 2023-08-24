class Movie < ApplicationRecord
  # belongs_to :user
  has_many :bookings

  has_and_belongs_to_many :theaters

  has_one_attached :image
end
