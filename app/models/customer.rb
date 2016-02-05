class Customer < ActiveRecord::Base
  belongs_to :kind
  belongs_to :price_group

  has_many :locations, dependent: :destroy
end
