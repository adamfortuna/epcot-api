class CreateReviews < ActiveRecord::Migration
  def change
    create_table :reviews do |t|
      t.timestamps
      t.string :reviewable_type, :limit => 20, :null => false
      t.integer :reviewable_id, :null => false
      t.integer :user_id, :null => false
      t.integer :rating
      t.string :title
      t.text :review
    end
    add_index :reviews, [:reviewable_id, :reviewable_type], :unique => true
    add_index :reviews, :user_id
  end
end
