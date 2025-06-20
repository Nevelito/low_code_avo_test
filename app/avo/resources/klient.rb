class Avo::Resources::Klient < Avo::BaseResource
  # self.includes = []
  # self.attachments = []
  # self.search = {
  #   query: -> { query.ransack(id_eq: params[:q], m: "or").result(distinct: false) }
  # }

  def fields
    field :id, as: :id
    field :nazwa, as: :text
    field :nazwa_firmy, as: :text
    field :status, as: :text
    field :ulica, as: :text
    field :miasto, as: :text
    field :kod_pocztowy, as: :text
    field :telefon, as: :text
    field :fax, as: :text
    field :nip, as: :text
    field :region, as: :text
    field :kraj, as: :text
    field :strona_internetowa, as: :text
    field :email, as: :text
    field :konto, as: :text
    field :adres, as: :text
    field :typ_klienta, as: :text
    field :notatki, as: :textarea
    field :orders, as: :textarea
    field :harmonogram_zamowien, as: :textarea
    field :zamowienia, as: :textarea
    field :wydanie, as: :textarea
    field :wz, as: :textarea
    field :finanse, as: :textarea
    field :zalaczniki, as: :textarea
    field :zadania, as: :textarea
    field :zakres_zainteresowania, as: :textarea
  end
end
