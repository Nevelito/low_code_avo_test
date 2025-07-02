class CreateSuppliers < ActiveRecord::Migration[8.0]
  def change
    create_table :suppliers do |t|
      t.string :name
      t.string :contact_person
      t.string :phone
      t.string :email
      t.string :address
      t.string :category
      t.string :rating
      t.date :contract_start
      t.date :contract_end
      t.text :products
      t.string :photo

      t.timestamps
    end
  end
end
