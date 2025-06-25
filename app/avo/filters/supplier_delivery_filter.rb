class SupplierDeliveryFilter < Avo::Filters::SelectFilter
  self.name = "Rodzaj dostawy"

  def options
    Supplier.delivery_categories.keys.map { |key| [key.humanize, key] }.to_h
  end

  def apply(_request, query, value)
    return query unless Supplier.delivery_categories.key?(value.downcase)

    query.where(delivery_category: Supplier.delivery_categories[value.downcase])
  end
end
