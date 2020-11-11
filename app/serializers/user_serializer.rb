class UserSerializer < ActiveModel::Serializer
  attributes :id, :username, :firstname, :lastname, :password, :receipts

  def receipts
    self.object.orders.map do |o|
      skuArray = o.product_orders.map do |po| 
        { id: po.sku.id,
          name: po.sku.name,
          quantity: po.quantity,
          price: po.sku.price
        }
      end
      { 
        order_id: o.id,
        order_date: o.created_at.to_date, 
        skus: skuArray
      }
    end
  end
end
