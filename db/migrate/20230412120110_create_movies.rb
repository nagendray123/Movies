class CreateMovies < ActiveRecord::Migration[7.0]
  def change
    create_table :movies do |t|
      t.string :movie_name
      t.string :movie_language
      t.string :movie_hours
      t.string :movie_type
      t.string :movie_release_date

      t.timestamps
    end
  end
end
