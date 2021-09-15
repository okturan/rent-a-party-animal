class ChangeCityToAddressFromBookings < ActiveRecord::Migration[6.0]
  def change
    rename_column :bookings, :city, :address
  end
end
