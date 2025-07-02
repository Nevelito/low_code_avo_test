class CreateProductionPlans < ActiveRecord::Migration[8.0]
  def change
    create_table :production_plans do |t|
      t.string :name
      t.date :start_date
      t.date :end_date
      t.integer :duration_days
      t.string :production_line
      t.string :status
      t.text :notes
      t.references :customer, null: false, foreign_key: true

      t.timestamps
    end
  end
end
