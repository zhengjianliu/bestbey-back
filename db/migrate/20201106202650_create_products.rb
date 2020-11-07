class CreateProducts < ActiveRecord::Migration[6.0]
  def change
    create_table :products do |t|
      t.string :name
      t.float :rating
      t.string :category
      t.string :frontimg
      t.string :sideimg
      t.string :backimg
      t.string :brand
      t.string :additional_specs

      t.timestamps
    end
  end
end
