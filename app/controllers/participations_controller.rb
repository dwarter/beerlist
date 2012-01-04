class ParticipationsController < ApplicationController
  def create
  	logger.info {'------------------------------'}
    @participation = current_user.participations.build(:event_id => params[:event_sign_up][:event_id])
  	if @participation.save
  		flash[:notice] = "You're attending this tasting!"
  		redirect_to event_path(@participation.event.id)
  	  else
  	  	flash[:error] = "Unable to attend event."
  	  	redirect_to events_path
  	  end
  	end

	def destroy
		@event=Event.find_by_id(params[:event_id])
		@participation = Participation.find_by_user_id_and_event_id(current_user.id, @event.id).destroy
		redirect_to events_path
	end

end

