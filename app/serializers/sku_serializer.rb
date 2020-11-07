class SkuSerializer < ActiveModel::Serializer
  attributes :id, :product, :product_option, :product_option_value
end
