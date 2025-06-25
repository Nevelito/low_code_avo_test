class Avo::Resources::InventoryItem < Avo::BaseResource
  # self.includes = []
  # self.attachments = []
  # self.search = {
  #   query: -> { query.ransack(id_eq: params[:q], m: "or").result(distinct: false) }
  # }

  def filters
    filter ::ItemCategoryFilter
  end

  def fields
    field :id, as: :id
    field :name, as: :text
    field :description, as: :textarea
    field :quantity, as: :number
    field :value, as: :number
    field :category, as: :text
    field :last_restock, as: :date
    field :supplier, as: :belongs_to
    field :production_plan, as: :belongs_to
    field :order, as: :belongs_to
  end
end
