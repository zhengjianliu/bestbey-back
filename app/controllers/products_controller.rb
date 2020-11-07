class ProductsController < ApplicationController

    def index 
        products = Product.all 

        # render json: ProductSerializer.new(products)
        render json: products
    end

end
