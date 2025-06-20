class Customer < ApplicationRecord
  has_many :orders
  has_many :production_plans


  enum customer_type: {
    regular: 0,
    occasional: 1,
    new: 2
  }

  enum interest_scope: {
    new_products: 0,
    used_sales: 1,
    used_purchases: 2,
    buyout: 3
  }
end
