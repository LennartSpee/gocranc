class CreateReviews < ActiveRecord::Migration[6.1]
  def change
    create_table :reviews do |t|
      t.text :comment
      t.float :rating
      t.references :booking
      t.references :user

      t.timestamps
    end
  end
end
