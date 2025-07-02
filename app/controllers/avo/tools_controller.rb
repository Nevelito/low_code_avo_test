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
          title: order.customer&.name || "Order ##{order.id}",
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
    when "contacts"
      Contact.all.each do |contact|
        events << {
          title: contact.full_name || "Kontakt ##{contact.id}",
          start: contact.created_at_date || contact.created_at.to_date,
          url: avo.resources_contact_path(contact)
        }
      end
    else
      # domyślnie wszystko
      Order.find_each do |order|
        events << {
          title: order.customer&.name || "Order ##{order.id}",
          start: order.delivery_date || order.created_at,
          url: avo.resources_order_path(order)
        }
      end

      ProductionPlan.find_each do |plan|
        events << {
          title: plan.name || "Plan ##{plan.id}",
          start: plan.start_date || plan.created_at,
          url: avo.resources_production_plan_path(plan)
        }
      end

      Contact.find_each do |contact|
        events << {
          title: contact.full_name || "Kontakt ##{contact.id}",
          start: contact.created_at_date || contact.created_at.to_date,
          url: avo.resources_contact_path(contact)
        }
      end
    end

    render json: events
  end
end
