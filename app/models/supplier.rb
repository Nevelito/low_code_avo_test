class Supplier < ApplicationRecord
  enum :delivery_category, {
    wood: 0,
    transport: 1,
    packaging_materials: 2,
    external_services: 3
  }
end
