class CreateChecks < ActiveRecord::Migration
  def up
    create_table :dish_checks do |t|
      t.timestamps
      t.integer :user_id, :null => false
      t.integer :dish_id, :null => false
    end
    add_index :dish_checks, :user_id
    add_index :dish_checks, :dish_id
    add_index :dish_checks, [:user_id, :dish_id], :unique => true
    
    add_column :users, :dish_checks_count, :integer, :default => 0
    add_column :dishes, :dish_checks_count, :integer, :default => 0
  end

  def down
    drop_table :checks
    remove_column :users, :dish_checks_count
    remove_column :dishes, :dish_checks_count
  end
end
