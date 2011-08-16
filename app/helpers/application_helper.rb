module ApplicationHelper
	# Return a title on a per-page basis.
  def title
    base_title = "Dan's Beer List"
    if @title.nil?
      base_title
    else
      "#{base_title} | #{@title}"
    end
  end
  
  
  # Logo/background pics
  
  def logo2
    image_tag("logo2.png", :alt => "Sample App", :class => "round")
  end
  def tack
    image_tag("tack.png", :alt => "Tack")
  end
  def tack2
    image_tag("tack2.png", :alt => "Tack2", :class => "right")
  end
  def dartboard
    image_tag("dartboard.png", :alt => "Dartboard", :class => "rightoutside")
  end
  def dart
    image_tag("dart.png", :alt => "Dart", :class => "leftoutside")
  end
  
  # Link pics
  
   def homelink
    image_tag("links/homelink.png", :alt => "Home", :class => "round")
  end
  def beerbasicslink
    image_tag("links/beerbasicslink.png", :alt => "Beer Basics", :class => "round")
  end
  def brewtubelink
    image_tag("links/brewtubelink.png", :alt => "Brew Tube", :class => "round")
  end
  def eventslink
    image_tag("links/eventslink.png", :alt => "Events", :class => "round")
  end
  def drinkerslink
    image_tag("links/drinkerslink.png", :alt => "Drinkers", :class => "round")
  end
  def profilelink
    image_tag("links/profilelink.png", :alt => "Profile", :class => "round")
  end
  def editprofilelink
    image_tag("links/editprofilelink.png", :alt => "Edit Profile", :class => "round")
  end
  def signoutlink
    image_tag("links/signoutlink.png", :alt => "Sign out", :class => "round")
  end
  def signinlink
    image_tag("links/signinlink.png", :alt => "Sign in", :class => "round")
  end
end


