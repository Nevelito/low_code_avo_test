# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema[8.0].define(version: 2025_06_18_134405) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "pg_catalog.plpgsql"

  create_table "harmonogram_produkcjis", force: :cascade do |t|
    t.string "nazwa"
    t.date "data_rozpoczecia"
    t.date "data_zakonczenia"
    t.integer "czas_trwania_etatu"
    t.string "production_line"
    t.string "status"
    t.text "powiazane_zamowienia"
    t.text "produkty_z_magazynu"
    t.string "dostawca"
    t.text "notatki"
    t.string "klient"
    t.string "czas_trwania"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "klients", force: :cascade do |t|
    t.string "nazwa"
    t.string "nazwa_firmy"
    t.string "status"
    t.string "ulica"
    t.string "miasto"
    t.string "kod_pocztowy"
    t.string "telefon"
    t.string "fax"
    t.string "nip"
    t.string "region"
    t.string "kraj"
    t.string "strona_internetowa"
    t.string "email"
    t.string "konto"
    t.string "adres"
    t.string "typ_klienta"
    t.text "notatki"
    t.text "orders"
    t.text "harmonogram_zamowien"
    t.text "zamowienia"
    t.text "wydanie"
    t.text "wz"
    t.text "finanse"
    t.text "zalaczniki"
    t.text "zadania"
    t.text "zakres_zainteresowania"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end
end
