class ConvertEnumFieldsToInteger < ActiveRecord::Migration[8.0]
  def change
    # Zamień string na integer w modelu ProductionPlan (status)
    change_column :production_plans, :status, :integer, using: 'status::integer'

    # Zamień string na integer w modelu Customer (typ klienta i zakres zainteresowania)
    add_column :customers, :customer_type, :integer, default: 0, null: false
    add_column :customers, :interest_scope, :integer, default: 0, null: false

    # Zamień string na integer w modelu Order (status)
    change_column :orders, :status, :integer, using: 'status::integer'

    # Zamień string na integer w modelu InventoryItem (category)
    change_column :inventory_items, :category, :integer, using: 'category::integer'

    # Zamień string na integer w modelu Supplier (kategoria dostawy)
    rename_column :suppliers, :category, :delivery_category
    change_column :suppliers, :delivery_category, :integer, using: 'delivery_category::integer'

    # Zamień string na integer w modelu Contact (status)
    change_column :contacts, :status, :integer, using: 'status::integer'

    # Dodaj indeksy (opcjonalnie – dla wydajności enumów)
    add_index :production_plans, :status
    add_index :customers, :customer_type
    add_index :customers, :interest_scope
    add_index :orders, :status
    add_index :inventory_items, :category
    add_index :suppliers, :delivery_category
    add_index :contacts, :status
  end
end
