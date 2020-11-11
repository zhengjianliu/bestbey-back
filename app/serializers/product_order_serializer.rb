class ProductOrderSerializer < ActiveModel::Serializer
  attributes :id
  # , :quantity, :sku

  # belongs_to :order
  # belongs_to :sku
end
