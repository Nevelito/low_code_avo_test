class CreateOrders < ActiveRecord::Migration[8.0]
  def change
    create_table :orders do |t|
      t.references :customer, null: false, foreign_key: true
      t.references :production_plan, null: false, foreign_key: true
      t.date :order_date
      t.date :delivery_date
      t.integer :quantity
      t.string :product
      t.decimal :total
      t.string :status
      t.text :invoice

      t.timestamps
    end
  end
end
