class Avo::Resources::Task < Avo::BaseResource
  # self.includes = []
  # self.attachments = []
  # self.search = {
  #   query: -> { query.ransack(id_eq: params[:q], m: "or").result(distinct: false) }
  # }
  def filters
    filter ::TaskStatusFilter
    filter ::TaskContactTypeFilter
  end

  def fields
    field :id, as: :id
    field :title, as: :text
    field :notes, as: :textarea
    field :planned_contact_at, as: :date_time
    field :contact_type, as: :number
    field :attachment, as: :text
    field :customer, as: :belongs_to
    field :status, as: :number
  end
end
