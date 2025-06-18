class CreateZamowienies < ActiveRecord::Migration[8.0]
  def change
    create_table :zamowienies do |t|
      t.references :klient, null: false, foreign_key: true
      t.date :data_zamowienia
      t.date :data_dostawy
      t.integer :ilosc
      t.string :produkt
      t.decimal :suma
      t.string :status
      t.references :harmonogram_produkcji, null: false, foreign_key: true
      t.references :magazyn, null: false, foreign_key: true
      t.string :dostawca
      t.text :fv

      t.timestamps
    end
  end
end
