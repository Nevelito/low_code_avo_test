class Avo::Resources::Order < Avo::BaseResource
  # self.includes = []
  # self.attachments = []
  # self.search = {
  #   query: -> { query.ransack(id_eq: params[:q], m: "or").result(distinct: false) }
  # }
  def filters
    filter ::OrderStatusFilter
  end

  def fields
    field :id, as: :id
    field :customer, as: :belongs_to
    field :production_plan, as: :belongs_to
    field :order_date, as: :date
    field :delivery_date, as: :date
    field :quantity, as: :number
    field :product, as: :text
    field :total, as: :number
    field :status, as: :text
    field :invoice, as: :textarea
  end

  def views
    [
      Avo::Views::Index::KanbanView.new(
        name: "Kanban",
        visible: true,
        group_by: :status,
        columns: Order.statuses.keys.map do |status|
          Avo::Views::Index::KanbanColumn.new(
            label: status.humanize,
            value: status
          )
        end,
        card: -> (order, context) {
          <<~HTML
            <div style="padding: 8px;">
              <strong>##{order.id}</strong><br>
              #{order.customer_name}<br>
              <small>Status: #{order.status}</small>
            </div>
          HTML
        },
        draggable: false # jeśli chcesz przeciąganie – ustaw na true
      )
    ]
  end
end
