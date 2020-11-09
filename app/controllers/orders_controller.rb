class OrdersController < ApplicationController

    def create 
        order = Order.create(order_params)
        product_orders = params[:skus].each do |sku|
            product_order = ProductOrder.create(
              sku_id: sku[:sku][:id],
              quantity: sku[:quantity],
              order_id: order[:id]
            )
        end
        render json: {order: order, product_orders: product_orders}
    end 

    private 

    def order_params
        params.require(:order).permit(:user_id)
    end

end
