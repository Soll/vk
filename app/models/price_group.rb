class PriceGroup < ActiveRecord::Base
  has_many :customers
  has_many :price_group_lines, dependent: :destroy
end
