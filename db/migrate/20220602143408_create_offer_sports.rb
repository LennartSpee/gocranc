class CreateOfferSports < ActiveRecord::Migration[6.1]
  def change
    create_table :offer_sports do |t|
      t.references :offer, null: false, foreign_key: true
      t.references :sport, null: false, foreign_key: true

      t.timestamps
    end
  end
end
