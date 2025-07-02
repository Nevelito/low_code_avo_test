class TaskContactTypeFilter < Avo::Filters::SelectFilter
  self.name = "Typ kontaktu"

  def options
    Task.contact_types.keys.map { |key| [ key.humanize, key ] }.to_h
  end

  def apply(_request, query, value)
    return query unless Task.contact_types.key?(value.downcase)

    query.where(contact_type: Task.contact_types[value.downcase])
  end
end
