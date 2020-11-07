class UserSerializer < ActiveModel::Serializer
  attributes :id, :username, :firstname, :lastname, :password, :orders, :product_orders
end
