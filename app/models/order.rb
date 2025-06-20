class Order < ApplicationRecord
  belongs_to :customer
  belongs_to :production_plan
  has_many :inventory_items

  enum status: {
    new: 0,
    accepted: 1,
    in_production: 2,
    manufactured: 3,
    shipped: 4,
    delivered: 5,
    completed: 6
  }
end
