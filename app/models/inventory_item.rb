class InventoryItem < ApplicationRecord
  belongs_to :supplier
  belongs_to :production_plan
  belongs_to :order

  enum category: {
    wood: 0,
    pallets: 1,
    packaging: 2
  }
end
