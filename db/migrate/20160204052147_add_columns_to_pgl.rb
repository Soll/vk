class AddColumnsToPgl < ActiveRecord::Migration
  def change
    add_reference :price_group_lines, :item, index: true, foreign_key: true
    add_reference :price_group_lines, :price_group, index: true, foreign_key: true
    add_column :price_group_lines, :amount, :integer
    add_column :price_group_lines, :price, :decimal
  end
end
