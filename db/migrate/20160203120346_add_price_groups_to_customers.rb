class AddPriceGroupsToCustomers < ActiveRecord::Migration
  def change
    add_reference :customers, :price_group, index: true, foreign_key: true
  end
end
