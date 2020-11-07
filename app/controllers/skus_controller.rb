class SkusController < ApplicationController
    def index 
        skus = Sku.all 

        render json: skus
    end
end
