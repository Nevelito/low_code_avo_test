class RemoveObsoleteStringEnumFields < ActiveRecord::Migration[8.0]
  def change
    remove_column :production_plans, :status, :string if column_exists?(:production_plans, :status, :string)
    remove_column :orders, :status, :string if column_exists?(:orders, :status, :string)
    remove_column :inventory_items, :category, :string if column_exists?(:inventory_items, :category, :string)
    remove_column :suppliers, :category, :string if column_exists?(:suppliers, :category, :string)
    remove_column :contacts, :status, :string if column_exists?(:contacts, :status, :string)
  end
end
