class CreateMagazyns < ActiveRecord::Migration[8.0]
  def change
    create_table :magazyns do |t|
      t.string :nazwa
      t.text :opis
      t.integer :ilosc
      t.decimal :wartosc
      t.references :dostawca, null: false, foreign_key: true
      t.string :kategoria
      t.date :ostatnie_uzupelnienie
      t.references :harmonogram_produkcji, null: false, foreign_key: true
      t.references :zamowienie, null: false, foreign_key: true

      t.timestamps
    end
  end
end
