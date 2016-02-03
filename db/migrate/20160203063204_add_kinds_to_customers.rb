class AddKindsToCustomers < ActiveRecord::Migration
  def change
    add_reference :customers, :kind, index: true, foreign_key: true
  end
end
