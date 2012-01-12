class ParticipationsController < ApplicationController
  def create
<<<<<<< HEAD
  	logger.info {'------------------------------'}
=======
    logger.info { "-------------------- #{params.inspect}" }
>>>>>>> 0f1d88fd5012ecaf1f3ad30f50a57d30ff1aaf1c
    @participation = current_user.participations.build(:event_id => params[:event_sign_up][:event_id])
  	if @participation.save
  		flash[:notice] = "You're attending this tasting!"
  		redirect_to event_path(@participation.event.id)
<<<<<<< HEAD
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

=======
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
>>>>>>> 0f1d88fd5012ecaf1f3ad30f50a57d30ff1aaf1c
end

