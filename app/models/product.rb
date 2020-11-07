class Product < ApplicationRecord
    has_many :product_options
    has_many :product_option_values, through: :product_options
    has_many :skus
end
