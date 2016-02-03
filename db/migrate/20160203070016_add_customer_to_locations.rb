class AddCustomerToLocations < ActiveRecord::Migration
  def change
    add_reference :locations, :customer, index: true, foreign_key: true
  end
end
