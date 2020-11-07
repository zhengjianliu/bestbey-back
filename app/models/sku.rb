class Sku < ApplicationRecord
  belongs_to :product
  belongs_to :product_option
  belongs_to :product_option_value
  has_many :product_orders
end
