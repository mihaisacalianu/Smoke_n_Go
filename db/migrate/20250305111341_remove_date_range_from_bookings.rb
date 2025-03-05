class RemoveDateRangeFromBookings < ActiveRecord::Migration[7.1]
  def change
    remove_column :bookings, :date_range
  end
end
