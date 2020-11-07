class CreateSkus < ActiveRecord::Migration[6.0]
  def change
    create_table :skus do |t|
      t.string :name
      t.string :price
      t.belongs_to :product, null: false, foreign_key: true
      t.belongs_to :product_option, null: false, foreign_key: true
      t.belongs_to :product_option_value, null: false, foreign_key: true

      t.timestamps
    end
  end
end
