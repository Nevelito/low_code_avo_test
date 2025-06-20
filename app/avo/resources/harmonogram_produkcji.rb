class Avo::Resources::HarmonogramProdukcji < Avo::BaseResource
  # self.includes = []
  # self.attachments = []
  # self.search = {
  #   query: -> { query.ransack(id_eq: params[:q], m: "or").result(distinct: false) }
  # }

  def fields
    field :id, as: :id
    field :nazwa, as: :text
    field :data_rozpoczecia, as: :date
    field :data_zakonczenia, as: :date
    field :czas_trwania_etatu, as: :number
    field :production_line, as: :text
    field :status, as: :text
    field :powiazane_zamowienia, as: :textarea
    field :produkty_z_magazynu, as: :textarea
    field :dostawca, as: :text
    field :notatki, as: :textarea
    field :klient, as: :text
    field :czas_trwania, as: :text
  end
end
