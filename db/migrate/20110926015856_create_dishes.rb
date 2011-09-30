class CreateDishes < ActiveRecord::Migration
  def change
    create_table :dishes do |t|
      t.timestamps
      t.string :slug, :limit => 200, :null => false
      t.integer :restaurant_id, :null => false
      t.string :category, :limit => 40, :null => false
      t.string :short_name, :limit => 200, :null => false
      t.string :name, :limit => 200, :null => false
      t.text :description
      t.boolean :vegetarian, :vegan, :gluten_free
      t.integer :reviews_count, :default => 0
      t.decimal :price, :precision => 8, :scale => 2
      t.decimal :rating, :precision => 4, :scale => 2
    end
    add_index :dishes, :slug, :unique => true
    add_index :dishes, :category
  end
end
