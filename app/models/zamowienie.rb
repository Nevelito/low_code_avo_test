class Zamowienie < ApplicationRecord
  belongs_to :klient
  belongs_to :harmonogram_produkcji
  belongs_to :magazyn
end
