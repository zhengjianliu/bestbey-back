class SkuSerializer < ActiveModel::Serializer
  attributes :id, :price, :name, :product, :product_option, :product_option_value


  # belongs_to :product
  # belongs_to :product_option
  # belongs_to :product_option_value
  # has_many :product_orders
end
