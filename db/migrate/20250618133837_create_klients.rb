class CreateKlients < ActiveRecord::Migration[8.0]
  def change
    create_table :klients do |t|
      t.string :nazwa
      t.string :nazwa_firmy
      t.string :status
      t.string :ulica
      t.string :miasto
      t.string :kod_pocztowy
      t.string :telefon
      t.string :fax
      t.string :nip
      t.string :region
      t.string :kraj
      t.string :strona_internetowa
      t.string :email
      t.string :konto
      t.string :adres
      t.string :typ_klienta
      t.text :notatki
      t.text :orders
      t.text :harmonogram_zamowien
      t.text :zamowienia
      t.text :wydanie
      t.text :wz
      t.text :finanse
      t.text :zalaczniki
      t.text :zadania
      t.text :zakres_zainteresowania

      t.timestamps
    end
  end
end
