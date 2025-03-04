class AddDefaultStartDateToBookings < ActiveRecord::Migration[7.1]
  def change
    change_column_default :bookings, :start_date, -> { 'CURRENT_DATE' }
  end
end
