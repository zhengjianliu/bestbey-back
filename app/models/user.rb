class User < ApplicationRecord
    has_many :orders
    has_many :product_orders, through: :orders
end
