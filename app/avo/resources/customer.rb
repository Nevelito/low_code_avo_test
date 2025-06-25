class Avo::Resources::Customer < Avo::BaseResource
  # self.includes = []
  # self.attachments = []
  # self.search = {
  #   query: -> { query.ransack(id_eq: params[:q], m: "or").result(distinct: false) }
  # }

  def filters
    filter ::CustomerInterestFilter
    filter ::CustomerTypeFilter
  end

  def fields
    field :id, as: :id
    field :name, as: :text
    field :company_name, as: :text
    field :email, as: :text
    field :phone, as: :text
    field :address, as: :text
    field :notes, as: :textarea
  end
end
