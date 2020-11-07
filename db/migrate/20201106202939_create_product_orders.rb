class CreateProductOrders < ActiveRecord::Migration[6.0]
  def change
    create_table :product_orders do |t|
      t.belongs_to :order, null: false, foreign_key: true
      t.belongs_to :sku, null: false, foreign_key: true

      t.timestamps
    end
  end
end
