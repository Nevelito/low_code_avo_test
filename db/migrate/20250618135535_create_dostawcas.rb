class CreateDostawcas < ActiveRecord::Migration[8.0]
  def change
    create_table :dostawcas do |t|
      t.string :nazwa
      t.string :osoba_kontaktowa
      t.string :telefon
      t.string :email
      t.string :adres
      t.string :kategoria
      t.string :ocena
      t.date :start_kontraktu
      t.date :koniec_kontraktu
      t.text :produkty
      t.string :zdjecie

      t.timestamps
    end
  end
end
