class AddSportToOffers < ActiveRecord::Migration[6.1]
  def change
    add_column :offers, :sport_id, :integer
    add_foreign_key :offers, :sports
  end
end
