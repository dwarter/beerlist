class BlahsController < ApplicationController
  respond_to :js, :html
  def edit
    @user=User.find(params[:id])
  end
  def gravatar
    logger.info { "---gravatar #{params[:gravatar]}" }
    gravatarhash=params[:gravatar]
    user_id=gravatarhash[:user_id]
    @user=User.find(user_id)
    @user.gravatar = gravatarhash[:image]
    logger.info { "-----#{@user.gravatar_file_name}" }
    @user.save(:validate => false)
    redirect_to @user
  end
  def update
    @user=User.find(params[:id])
    if @user.update_attributes
      flash[:notice]='made gravatar'
      redirect_to user_path(@user)
    else
      flash[:error]='didnt'
      render :action => 'new'
    end
  end
  def show
  end

end
