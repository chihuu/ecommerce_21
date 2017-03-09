class CreateOrders < ActiveRecord::Migration[5.0]
  def change
    create_table :orders do |t|
      t.references :user, foreign_key: true
      t.string :name
      t.string :address
      t.string :phone
      t.integer :status
      t.decimal :total

      t.timestamps
    end
  end
end
