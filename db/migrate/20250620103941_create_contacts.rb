class CreateContacts < ActiveRecord::Migration[8.0]
  def change
    create_table :contacts do |t|
      t.string :full_name
      t.string :address
      t.string :phone
      t.string :email
      t.string :status
      t.string :attachment
      t.text :notes
      t.date :created_at_date

      t.timestamps
    end
  end
end
