class EventspicController < ApplicationController
  respond_to :js, :html
  def edit
    @event=Event.find(params[:id])
    if signed_in?
      @micropost = Micropost.new
    end
  end
  def eventpic
    logger.info { "---eventpic #{params[:eventpic]}" }
    eventpichash=params[:eventpic]
    event_id=eventpichash[:event_id]
    @event=Event.find(event_id)
    @event.eventpic = eventpichash[:image]
    logger.info { "-----#{@event.eventpic_file_name}" }
    @event.save(:validate => false)
    
    redirect_to @event
    
  end
  def update
    @event=Event.find(params[:id])
    if @event.update_attributes
      flash[:notice]='made eventpic'
      redirect_to event_path(@event)
    else
      flash[:error]='didnt'
      render :action => 'new'
    end
  end
  def show
  end

end
