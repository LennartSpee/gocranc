class AddColumnsToProfiles < ActiveRecord::Migration[6.1]
  def change
    add_column :profiles, :favorite_places, :string
    add_column :profiles, :social_medias, :string
  end
end
