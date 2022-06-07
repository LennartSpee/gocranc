class AddSportToOffers < ActiveRecord::Migration[6.1]
  def change
    add_reference :offers, :sport, index: true, null: false
  end
end
