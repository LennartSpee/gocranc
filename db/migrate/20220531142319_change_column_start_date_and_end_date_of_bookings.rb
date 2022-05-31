class ChangeColumnStartDateAndEndDateOfBookings < ActiveRecord::Migration[6.1]
  def change
    change_column :bookings, :start_date, :date, using: 'start_date::text::date'
    change_column :bookings, :end_date, :date, using: 'end_date::text::date'
  end
end
