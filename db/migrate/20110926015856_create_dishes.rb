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
      t.boolean :vegetarian, :default => true
      t.boolean :vegetarian, :default => true
      t.boolean :gluten_free, :default => false
      t.decimal :price, :precision => 8, :scale => 2
      t.integer :reviews_count, :default => 0
      t.decimal :rating, :precision => 4, :scale => 2
      t.integer :ratings_count, :default => 0
      t.text :notes
    end
    add_index :dishes, :slug, :unique => true
    add_index :dishes, :category
  end
end
