class CreateTheaters < ActiveRecord::Migration[7.0]
  def change
    create_table :theaters do |t|
      t.string :theater_name
      t.string :location
      t.integer :capacity

      t.timestamps
    end
  end
end
