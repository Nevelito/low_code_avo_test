class ProductionPlan < ApplicationRecord
  belongs_to :customer

  enum :status, {
    planning: 0,
    material_preparation: 1,
    assembly: 2,
    warehousing: 3,
    loading_transport: 4,
    completed: 5
  }
end
