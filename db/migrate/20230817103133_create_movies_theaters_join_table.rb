class CreateMoviesTheatersJoinTable < ActiveRecord::Migration[7.0]
  def change
   create_join_table :movies, :theaters
  end
end
