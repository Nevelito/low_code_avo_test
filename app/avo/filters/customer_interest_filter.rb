class CustomerInterestFilter < Avo::Filters::SelectFilter
  self.name = "Zainteresowanie"

  def options
    Customer.interest_scopes.keys.map { |key| [key.humanize, key] }.to_h
  end

  def apply(_request, query, value)
    return query unless Customer.interest_scopes.key?(value.downcase)

    query.where(interest_scope: Customer.interest_scopes[value.downcase])
  end
end
