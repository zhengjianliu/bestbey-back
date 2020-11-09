class OrdersController < ApplicationController

# create and order
    # product-order

    def create 
        order = Order.create(order_params)
        # byebug
        product_orders = params[:skus].each do |sku|
            product_order = ProductOrder.create(
              sku_id: sku[:id],
              order_id: order[:id]
            )
        end
        render json: {order: order, product_orders: product_orders}
    end 

    private 

    def order_params
        params.require(:order).permit(:user_id)
    end

    # def product_order_params
    #     params.require(:order).permit(:user_id, :sku_id)
    # end
end
