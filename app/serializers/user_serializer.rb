class UserSerializer < ActiveModel::Serializer
  attributes :id, :username, :firstname, :lastname, :password, :orders, :product_orders

  has_many :orders
  has_many :product_orders, through: :orders
end
