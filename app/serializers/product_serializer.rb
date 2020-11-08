class ProductSerializer < ActiveModel::Serializer
  # include FastJsonapi::ObjectSerializer
  attributes :id, :name,:category, :rating, :brand, :frontimg, :sideimg, :backimg, :additional_specs,  :product_options,  :product_option_values, :skus
end
