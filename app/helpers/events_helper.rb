module EventsHelper
   def default_image_for_events
	   image_tag("events/event1.png", :alt => "Your Event", :class => "round")
   end
  def check_status_for_an_event(event, &block)
    if signed_in?
      yield unless current_user.event_ids.include?(event.id)
    end
  end
  def unregister_status_check(event, &block)
    if signed_in?
      yield if current_user.event_ids.include?(event.id)
    end
  end
end
