class Avo::Resources::Supplier < Avo::BaseResource
  # self.includes = []
  # self.attachments = []
  # self.search = {
  #   query: -> { query.ransack(id_eq: params[:q], m: "or").result(distinct: false) }
  # }

  def filters
    filter ::SupplierDeliveryFilter
  end

  def fields
    field :id, as: :id
    field :name, as: :text
    field :contact_person, as: :text
    field :phone, as: :text
    field :email, as: :text
    field :address, as: :text
    field :category, as: :text
    field :rating, as: :text
    field :contract_start, as: :date
    field :contract_end, as: :date
    field :products, as: :textarea
    field :photo, as: :text
  end
end
