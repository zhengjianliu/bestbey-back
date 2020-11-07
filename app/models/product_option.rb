class ProductOption < ApplicationRecord
  belongs_to :product
  has_many :product_option_values
end
