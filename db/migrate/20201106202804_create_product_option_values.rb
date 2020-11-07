class CreateProductOptionValues < ActiveRecord::Migration[6.0]
  def change
    create_table :product_option_values do |t|
      t.string :name
      t.belongs_to :product_option, null: false, foreign_key: true

      t.timestamps
    end
  end
end
