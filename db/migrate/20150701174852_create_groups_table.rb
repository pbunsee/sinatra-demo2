class CreateGroupsTable < ActiveRecord::Migration

  def change

    create_table :groups do |t|
      t.integer :appointment_id
    end

    create_table :appointments do |t|
      t.datetime :start_time
    end

    add_column :users, :group_id, :integer

  end

end
