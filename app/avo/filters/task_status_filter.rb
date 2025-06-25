class TaskStatusFilter < Avo::Filters::SelectFilter
  self.name = "Status zadania"

  def options
    Task.statuses.keys.map { |key| [key.humanize, key] }.to_h
  end

  def apply(_request, query, value)
    return query unless Task.statuses.key?(value.downcase)

    query.where(status: Task.statuses[value.downcase])
  end
end
