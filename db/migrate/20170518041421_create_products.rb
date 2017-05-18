class CreateProducts < ActiveRecord::Migration[5.0]
  def change
    create_table :products do |t|
      t.references :category, foreign_key: true
      t.string :name
      t.text :short_description
      t.text :description
      t.float :price
      t.string :image
      t.integer :quantity
      t.float :rate_score

      t.timestamps
    end
  end
end
