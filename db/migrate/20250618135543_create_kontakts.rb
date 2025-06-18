class CreateKontakts < ActiveRecord::Migration[8.0]
  def change
    create_table :kontakts do |t|
      t.string :imie_i_nazwisko
      t.string :adres
      t.string :telefon
      t.string :email
      t.string :status
      t.string :zalacznik
      t.text :notatki
      t.date :data_utworzenia

      t.timestamps
    end
  end
end
