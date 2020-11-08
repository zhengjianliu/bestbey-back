class CreateQuantColumnToProductOrder < ActiveRecord::Migration[6.0]
  def change
    create_table :quant_column_to_product_orders do |t|
      t.integer :quantity
    end
  end
end
