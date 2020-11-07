class RemoveSkuPrice < ActiveRecord::Migration[6.0]
  def change
    remove_column :skus, :price
    add_column :skus, :price, :float
  end
end
