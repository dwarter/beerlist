class PagesController < ApplicationController
  def home
    @title = "Home"
    if signed_in?
      @micropost = Micropost.new
      @feed_items = current_user.feed
    end
  end

def beerbasics
  	@title = "Beer Basics"
  end
def brewtube
  	@title = "Brewtube"
  end
  def events
  	@title = "Events"
  end
  
  
def about
  	@title = "About"
  end
  
  def contact
  	@title = "Contact"
  end
  
  def help
    @title = "Help"
  end

end
