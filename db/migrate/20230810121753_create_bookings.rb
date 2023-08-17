class CreateBookings < ActiveRecord::Migration[7.0]
  def change
    create_table :bookings do |t|
      t.string :theater_name
      t.integer :howmany_seats
      t.string :date
      t.string :time
      t.string :select_seats
      t.references :user, null: false, foreign_key: true
      t.references :theater, null: false, foreign_key: true

      t.timestamps
    end
  end
end
