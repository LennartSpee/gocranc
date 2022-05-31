class CreateProfiles < ActiveRecord::Migration[6.1]
  def change
    create_table :profiles do |t|
      t.string :name
      t.string :phone
      t.integer :age
      t.text :bio
      t.text :sports
      t.string :address
      t.string :user_type
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
