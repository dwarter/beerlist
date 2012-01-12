module EventsHelper
   def default_image_for_events
	   image_tag("events/event1.png", :alt => "Your Event", :class => "round")
   end
end
