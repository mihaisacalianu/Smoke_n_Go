class RemoveDefaultFromStartDateInBookings < ActiveRecord::Migration[7.1]
  def change
    change_column_default :bookings, :start_date, nil
  end
end
