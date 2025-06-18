class CreateHarmonogramProdukcjis < ActiveRecord::Migration[8.0]
  def change
    create_table :harmonogram_produkcjis do |t|
      t.string :nazwa
      t.date :data_rozpoczecia
      t.date :data_zakonczenia
      t.integer :czas_trwania_etatu
      t.string :production_line
      t.string :status
      t.text :powiazane_zamowienia
      t.text :produkty_z_magazynu
      t.string :dostawca
      t.text :notatki
      t.string :klient
      t.string :czas_trwania

      t.timestamps
    end
  end
end
