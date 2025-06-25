class Avo::Resources::Contact < Avo::BaseResource
  # self.includes = []
  # self.attachments = []
  # self.search = {
  #   query: -> { query.ransack(id_eq: params[:q], m: "or").result(distinct: false) }
  # }

  def filters
    filter ::ContactStatusFilter
  end

  def fields
    field :id, as: :id
    field :full_name, as: :text
    field :address, as: :text
    field :phone, as: :text
    field :email, as: :text
    field :status, as: :text
    field :attachment, as: :text
    field :notes, as: :textarea
    field :created_at_date, as: :date
  end
end
