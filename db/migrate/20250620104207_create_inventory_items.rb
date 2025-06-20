class CreateInventoryItems < ActiveRecord::Migration[8.0]
  def change
    create_table :inventory_items do |t|
      t.string :name
      t.text :description
      t.integer :quantity
      t.decimal :value
      t.string :category
      t.date :last_restock
      t.references :supplier, null: false, foreign_key: true
      t.references :production_plan, null: false, foreign_key: true
      t.references :order, null: false, foreign_key: true

      t.timestamps
    end
  end
end
