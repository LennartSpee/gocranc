class DropOfferSports < ActiveRecord::Migration[6.1]
  def change
    drop_table :offer_sports
  end
end
