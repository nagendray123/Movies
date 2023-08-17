class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :theater
 

  resourcify

  has_many :users, through: :roles, class_name: 'User', source: :users

  validates :theater_name, :howmany_seats, :date, :time, :select_seats, presence: true
end
