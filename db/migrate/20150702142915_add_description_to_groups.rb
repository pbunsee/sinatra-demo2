class AddDescriptionToGroups < ActiveRecord::Migration
  def change
    add_column :groups, :description, :string, limit: 150
  end
end
