# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

# Theater.destroy_all
# Movie.destroy_all

 # Add Movie Command

# 50.times do
#   Movie.create!(
#     movie_name: "Movie #{rand(9..50)}",
#     movie_language: ["English", "Spanish", "French", "German", "Italian"].sample,
#     movie_hours: "#{rand(1..3)}h #{rand(0..59)}m",
#     movie_type: ["Action", "Comedy", "Drama", "Sci-Fi", "Thriller"].sample,
#     movie_release_date: Date.today - rand(0..365),
#     # user_id: 1
#   )
# end

 # Movie Booking Command

# 50.times do
#   Booking.create!(
#     movie_name: "Movie 1",
#     ticket_number: rand(1..5),
#     date: "2023-#{rand(1..12).to_s.rjust(2, '0')}-#{rand(1..28).to_s.rjust(2, '0')}",
#     time: "#{rand(0..23).to_s.rjust(2, '0')}:00",
#     venue: "Theater A",
#     ticket_id: SecureRandom.hex(8),
#     movie_id: 1,
#     user_id: 1,
#     movie_language: "English",
#     theater_id: 1,
#     theater_name: "Theater A"
#   )
# end

# start_index = 19
# end_index = 69
# Movie.order(:id).offset(start_index).limit(end_index - start_index + 1).destroy_all
