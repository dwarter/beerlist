class ParticipationController < ApplicationController
  def new
  end
  
  def create
  	@participation = current_user.participations.build(:user_id => params[:event_id])
  	if @participation.save
  		flash[:notice] = "You're attending this tasting!"
  		redirect_to events_path
  	  else
  	  	flash[:error] = "Unable to attend event."
  	  	redirect_to event_path
  	  end
  	end

end
