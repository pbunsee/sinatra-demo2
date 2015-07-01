class AddRepoToGroup < ActiveRecord::Migration
  def change
    add_column :groups, :repo, :string
  end
end
