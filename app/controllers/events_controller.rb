class EventsController < ApplicationController
	
  def new
  	@event = Event.new
  	@title = "Host and event"
  end
  
  def show
  	@event = Event.find(params[:id])
	@title = @event.name
	@paricipation = Participation.all
  end
  
  def index
  	@title = "Tasting Events"
  	@events = Event.all
  end
  
  def create
  	logger.info "///////://////////////.......#{params[:eventpic]}aaaaaaaaaa"
  	logger.info ".................................check"
  	logger.info ".................................check"
  	logger.info ".................................check"
  	
  	@event = Event.new(params[:event])
  	
  	  if @event.save 
  	   
  	   flash[:success] = "You're now hosting an event!"
       redirect_to @event
    else
      @title = "Host your own event"
      render 'new'
     
    end
  end
end
