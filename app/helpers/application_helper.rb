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
  def logo
    image_tag("logo.gif", :alt => "Sample App", :class => "round")
  end
  def userinfo
    image_tag("userinfo.png", :alt => "Sample App", :class => "round")
  end
  def list
    image_tag("list.png", :alt => "Sample App", :class => "round")
  end
  def list2
    image_tag("list2.png", :alt => "Sample App", :class => "round")
  end
  def homelinkselect
    image_tag("links/homelinkselect.gif", :alt => "Sample App", :class => "round")
  end
  
  def dartboard
    image_tag("dartboard.png", :alt => "Dartboard", :class => "rightoutside")
  end
  def dart
    image_tag("dart.png", :alt => "Dart", :class => "leftoutside")
  end
  
  def arrow
    image_tag("arrow.png", :alt => "arrow", :class => "leftoutside")
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
   def dasforumlink
    image_tag("links/dasforumlink.png", :alt => "Das Forum", :class => "round")
  end
 
  def signoutlink
    image_tag("links/signoutlink.png", :alt => "Sign out", :class => "round")
  end
  def signinlink
    image_tag("links/signinlink.png", :alt => "Sign in", :class => "round")
  end
  
  
  # Drinker Levels
  
  def level0
    image_tag("levels/level0.png", :alt => "Sober", :class => "round")
  end
  def level1
    image_tag("levels/level1.png", :alt => "Buzzed", :class => "round")
  end
  def level2
    image_tag("levels/level2.png", :alt => "Drunk", :class => "round")
  end
  def level3
    image_tag("levels/level3.png", :alt => "Wasted", :class => "round")
  end
  def level4
    image_tag("levels/level4.png", :alt => "Shitfaced", :class => "round")
  end
  def level5
    image_tag("levels/level5.png", :alt => "Blackout", :class => "round")
  end
end




