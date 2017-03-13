class CreateProducts < ActiveRecord::Migration[5.0]
  def change
    create_table :products do |t|
      t.references :categories, foreign_key: true
      t.string :name
      t.string :info
      t.decimal :price
      t.string :image
      t.integer :average_rate
      t.integer :number_of_order, default: Settings.default.number_of_order

      t.timestamps
    end
  end
end
