class CreateBookings < ActiveRecord::Migration[6.1]
  def change
    create_table :bookings do |t|
      t.date :starting_date
      t.date :ending_date
      t.references :user
      t.references :offer
      t.timestamps
    end
  end
end
