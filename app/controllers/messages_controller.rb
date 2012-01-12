class MessagesController < ApplicationController
	def index
    @messages = Message.scoped
    @message = Message.new
    if signed_in?
      @micropost = Micropost.new
    end
  end

  def show
    @message = Message.find(params[:id])
    if signed_in?
      @micropost = Micropost.new
    end
  end

  def new
    @message = Message.new(:parent_id => params[:parent_id])
    if signed_in?
      @micropost = Micropost.new
    end
  end

  def create
    @message = current_user.messages.build(params[:message])
    if @message.save
      redirect_to messages_url
    else
      render :new
    end
  end

  def destroy
    @message = Message.find(params[:id])
    @message.destroy
    redirect_to messages_url
  end
  def authorized_user
      @message = current_user.messages.find_by_id(params[:id])
      redirect_to root_path if @message.nil?
    end
end
