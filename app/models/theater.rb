class Theater < ApplicationRecord
	has_many :movies
	has_many :bookings

	has_and_belongs_to_many :movies
end
