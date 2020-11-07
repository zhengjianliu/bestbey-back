class ProductSerializer < ActiveModel::Serializer
  # include FastJsonapi::ObjectSerializer
  attributes :id, :name, :rating, :frontimg, :sideimg, :backimg, :additional_specs, :brand, :product_options, :product_option_values, :skus
end
