class Avo::ToolsController < Avo::ApplicationController
  def calendar
    @page_title = "Calendar"
    add_breadcrumb "Calendar"
  end

  def calendar_events
    events = []

    case params[:type]
    when "orders"
      Order.all.each do |order|
        events << {
          title: order.customer.name || "Order ##{order.id}",
          start: order.delivery_date || order.created_at,
          url: avo.resources_order_path(order)
        }
      end
    when "plans"
      ProductionPlan.all.each do |plan|
        events << {
          title: plan.name || "Plan ##{plan.id}",
          start: plan.start_date || plan.created_at,
          url: avo.resources_production_plan_path(plan)
        }
      end
    else
      Order.all.each do |order|
        events << {
          title: order.customer.name || "Order ##{order.id}",
          start: order.delivery_date || order.created_at,
          url: avo.resources_order_path(order)
        }
      end

      ProductionPlan.all.each do |plan|
        events << {
          title: plan.name || "Plan ##{plan.id}",
          start: plan.start_date || plan.created_at,
          url: avo.resources_production_plan_path(plan)
        }
      end
    end

    render json: events
  end
end
