class CreateProducts < ActiveRecord::Migration[5.1]
  def change
    create_table :products do |t|
      t.string :name
      t.boolean :sold_out
      t.boolean :under_sale
      t.integer :price
      t.integer :sale_price
      t.string :sale_text
      t.references :category, foreign_key: true

      t.timestamps
    end
  end
end
