class CreatePriceGroups < ActiveRecord::Migration
  def change
    create_table :price_groups do |t|
      t.string :name
      t.timestamps null: false
    end
  end
end
