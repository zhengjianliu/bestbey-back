class AddQuantityColumnToProductOrders < ActiveRecord::Migration[6.0]
  def change
    add_column :product_orders, :quantity, :integer
  end
end
