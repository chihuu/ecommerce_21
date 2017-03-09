class CreateSubgests < ActiveRecord::Migration[5.0]
  def change
    create_table :subgests do |t|
      t.references :user, foreign_key: true
      t.references :categories, foreign_key: true
      t.string :name
      t.boolean :status

      t.timestamps
    end
  end
end
