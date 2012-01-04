class ForumsController < ApplicationController
  before_filter :authenticate, :only => [:create, :destroy]
  before_filter :authorized_user, :only => :destroy

  def create
    @forum  = current_user.forums.build(params[:forum])
    if @forum.save
      flash[:success] = "Post created!"
      redirect_to root_path
    else
      @feed_items = []
      render 'pages/home'
    end
  end

  def destroy
  	@forum = Forum.find(params[:id]).destroy
    redirect_to root_path
  end
  
private

    def authorized_user
      @forum = current_user.forums.find_by_id(params[:id])
      redirect_to root_path if @forum.nil?
    end
end
