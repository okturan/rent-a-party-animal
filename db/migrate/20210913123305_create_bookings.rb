class CreateBookings < ActiveRecord::Migration[6.0]
  def change
    create_table :bookings do |t|
      t.references :user, null: false, foreign_key: true
      t.references :party_animal, null: false, foreign_key: true
      t.string :city
      t.string :party_type
      t.time :start_time
      t.time :end_time
      t.integer :total_price

      t.timestamps
    end
  end
end
