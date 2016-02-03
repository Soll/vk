class CreateLocations < ActiveRecord::Migration
  def change
    create_table :locations do |t|
      
      t.string :adres
      t.string :phone
      t.string :comment
      t.timestamps null: false
    end
  end
end
