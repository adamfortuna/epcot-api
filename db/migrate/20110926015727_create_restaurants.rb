class CreateRestaurants < ActiveRecord::Migration
  def change
    create_table :restaurants do |t|
      t.timestamps
      t.string :slug, :limit => 200, :null => false
      t.string :name, :limit => 200, :null => false
      t.integer :rating
      t.integer :booth_order
      t.integer :year_opened
      t.integer :dishes_count, :default => 0, :null => false
    end
    add_index :restaurants, :slug, :unique => true
  end
end
