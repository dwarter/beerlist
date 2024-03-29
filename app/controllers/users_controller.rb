class UsersController < ApplicationController
   before_filter :authenticate, :except => [:show, :new, :create]
   before_filter :correct_user, :only => [:edit, :update]
   before_filter :admin_user,   :only => :destroy
   
  def index
    @title = "Drinkers"
    @users = User.paginate(:page => params[:page])
    if signed_in?
      @micropost = Micropost.new
    end
  end
	
  def show
    @user = User.find(params[:id])
    @microposts = @user.microposts
    @title = @user.name
    if signed_in?
      @micropost = Micropost.new
    end
  end
  
  def new
  	@user = User.new
    @title = "Sign up"
  end
  
  def create
    @user = User.new(params[:user])
    if @user.save
       sign_in @user
       flash[:success] = "Welcome to the Sample App!"
       redirect_to @user
    else
      @title = "Sign up"
      render 'new'
    end
  end
  
  def edit
    @title = "Edit profile"
    if signed_in?
      @micropost = Micropost.new
    end
  end
  
  def update
    @user = User.find(params[:id])
    if @user.update_attributes(params[:user])
      flash[:success] = "Profile updated."
      redirect_to @user
    else
      @title = "Edit profile"
      render 'edit'
    end
    if signed_in?
      @micropost = Micropost.new
    end
  end
  
  def following
    @title = "Following"
    @user = User.find(params[:id])
    @users = @user.following
    if signed_in?
      @micropost = Micropost.new
    end
    render 'show_follow'
    
  end

  def followers
    @title = "Followers"
    @user = User.find(params[:id])
    @users = @user.followers
    if signed_in?
      @micropost = Micropost.new
    end
    render 'show_follow'
  end
  
  def destroy
    @user = User.find(params[:id]).destroy
    redirect_to users_path
  end
  
  private

    def authenticate
      deny_access unless signed_in?
    end
    
    def correct_user
      @user = User.find(params[:id])
      redirect_to(root_path) unless current_user?(@user)
    end
    
    def admin_user
      redirect_to(root_path) unless current_user.admin?
    end
end
