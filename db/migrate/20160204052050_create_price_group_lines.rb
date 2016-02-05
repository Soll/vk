class CreatePriceGroupLines < ActiveRecord::Migration
  def change
    create_table :price_group_lines do |t|
      
      t.timestamps null: false
    end
  end
end
