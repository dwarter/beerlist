class PagesController < ApplicationController
  def home
    @title = "Home"
    if signed_in?
      @micropost = Micropost.new
      @feed_items = current_user.feed
      logger.info "..........................................my name is Dan"
    end
    @mostrecentmicroposts = Micropost.order("created_at desc").limit(3)
    @mostrecentevents = Event.order("created_at desc").limit(1)
    @mostrecentarticles = Article.order("created_at desc").limit(1)
  end

def beerbasics
  	@title = "Beer Basics"
  	 if signed_in?
      @micropost = Micropost.new
      @feed_items = current_user.feed
      logger.info "..........................................my name is Dan"
    end
    @mostrecentmicroposts = Micropost.order("created_at desc").limit(3)
  end
def brewtube
  	@title = "Brewtube"
  	if signed_in?
      @micropost = Micropost.new
    end
  end
  def events
  	@title = "Events"
  	if signed_in?
      @micropost = Micropost.new
    end
  	 
  end
  
def about
  	@title = "About"
  	if signed_in?
      @micropost = Micropost.new
    end
  end
  
  def contact
  	@title = "Contact"
  	if signed_in?
      @micropost = Micropost.new
    end
  end
  
  def help
    @title = "Help"
    if signed_in?
      @micropost = Micropost.new
    end
  end

end
