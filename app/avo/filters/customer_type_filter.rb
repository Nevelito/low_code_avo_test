class CustomerTypeFilter < Avo::Filters::SelectFilter
  self.name = "Typ klienta"

  def options
    Customer.customer_types.keys.map { |key| [key.humanize, key] }.to_h
  end

  def apply(_request, query, value)
    return query unless Customer.customer_types.key?(value.downcase)

    query.where(customer_type: Customer.customer_types[value.downcase])
  end
end
