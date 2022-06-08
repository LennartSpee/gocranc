class RenameBookingIdToOfferId < ActiveRecord::Migration[6.1]
  def change
    rename_column :reviews, :booking_id, :offer_id
  end
end
