class Magazyn < ApplicationRecord
  belongs_to :dostawca
  belongs_to :harmonogram_produkcji
  belongs_to :zamowienie
end
