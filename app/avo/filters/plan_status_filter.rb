class PlanStatusFilter < Avo::Filters::SelectFilter
  self.name = "Status planu produkcji"

  def options
    ProductionPlan.statuses.keys.map { |key| [ key.humanize, key ] }.to_h
  end

  def apply(_request, query, value)
    return query unless ProductionPlan.statuses.key?(value.downcase)

    query.where(status: ProductionPlan.statuses[value.downcase])
  end
end
