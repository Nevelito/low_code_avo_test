class OrderStatusFilter < Avo::Filters::SelectFilter
  self.name = "Status zamówienia"

  def options
    Order.statuses.keys.map { |key| [key.humanize, key] }.to_h
  end

  def apply(_request, query, value)
    return query unless Order.statuses.key?(value.downcase)

    query.where(status: Order.statuses[value.downcase])
  end
end
