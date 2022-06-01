class ChangeSportsOnProfiles < ActiveRecord::Migration[6.1]
  def change
    remove_column :profiles, :sports, :string
    add_column :profiles, :sports, :string, array:true, default:[]
  end
end
