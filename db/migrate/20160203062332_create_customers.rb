class CreateCustomers < ActiveRecord::Migration
  def change
    create_table :customers do |t|
      t.string :name
      t.string :adres
      t.string :phone
      t.string :comment
      t.timestamps null: false
    end
  end
end
