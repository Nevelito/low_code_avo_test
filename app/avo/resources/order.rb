class Avo::Resources::Order < Avo::BaseResource
  # self.includes = []
  # self.attachments = []
  # self.search = {
  #   query: -> { query.ransack(id_eq: params[:q], m: "or").result(distinct: false) }
  # }

  def fields
    field :id, as: :id
    field :customer, as: :belongs_to
    field :production_plan, as: :belongs_to
    field :order_date, as: :date
    field :delivery_date, as: :date
    field :quantity, as: :number
    field :product, as: :text
    field :total, as: :number
    field :status, as: :text
    field :invoice, as: :textarea
  end
end
