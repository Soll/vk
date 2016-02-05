class PriceGroupLine < ActiveRecord::Base
  belongs_to :item
  belongs_to :price_group
end
