class CreateReports < ActiveRecord::Migration
  def change
    create_table :reports do |t|
      t.timestamps
      t.text :description, :null => false
    end
  end
end