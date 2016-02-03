class Customer < ActiveRecord::Base
  belongs_to :kind

  has_many :locations, dependent: :destroy
end
