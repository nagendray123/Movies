class Theater < ApplicationRecord
	has_many :users
	has_many :movies
	has_many :bookings
end
