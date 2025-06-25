class ContactStatusFilter < Avo::Filters::SelectFilter
  self.name = "Status kontaktu"

  def options
    Contact.statuses.keys.map { |key| [key.humanize, key] }.to_h
  end

  def apply(_request, query, value)
    return query unless Contact.statuses.key?(value.downcase)

    query.where(status: Contact.statuses[value.downcase])
  end
end
