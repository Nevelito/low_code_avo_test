class Avo::Resources::ProductionPlan < Avo::BaseResource
  # self.includes = []
  # self.attachments = []
  # self.search = {
  #   query: -> { query.ransack(id_eq: params[:q], m: "or").result(distinct: false) }
  # }

  def fields
    field :id, as: :id
    field :name, as: :text
    field :start_date, as: :date
    field :end_date, as: :date
    field :duration_days, as: :number
    field :production_line, as: :text
    field :status, as: :text
    field :notes, as: :textarea
    field :customer, as: :belongs_to
  end
end
