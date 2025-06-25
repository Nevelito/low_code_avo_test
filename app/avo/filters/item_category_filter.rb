class ItemCategoryFilter < Avo::Filters::SelectFilter
  self.name = "Kategoria zasobu"

  def options
    InventoryItem.categories.keys.map { |key| [key.humanize, key] }.to_h
  end

  def apply(_request, query, value)
    return query unless InventoryItem.categories.key?(value.downcase)

    query.where(category: InventoryItem.categories[value.downcase])
  end
end
