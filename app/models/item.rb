class Item < ActiveRecord::Base
  has_many :price_group_lines
end
