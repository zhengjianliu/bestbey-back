class RemoveQuantFromProductOrder < ActiveRecord::Migration[6.0]
  def change
    drop_table :quant_column_to_product_orders
  end
end
