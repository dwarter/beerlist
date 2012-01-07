class ArticlesController < ApplicationController
  def new
  	@article = Article.new
  	@title = "Write an Article"
  	if signed_in?
      @micropost = Micropost.new
    end
  end
  
  def show
  	@article = Article.find(params[:id])
	@title = @article.title
	if signed_in?
      @micropost = Micropost.new
    end
  end
  
  def index
  	@title = "News"
  	@articles = Article.all
  	 if signed_in?
      @micropost = Micropost.new
    end
   
  end
  
  def create
  	logger.info "///////://////////////.......#{params[:articlepic]}aaaaaaaaaa"
  	logger.info ".................................check"
  	logger.info ".................................check"
  	logger.info ".................................check"
  	
  	@article = Article.new(params[:article])
  	
  	
  
  	
  	  if @article.save 
  	   
  	   flash[:success] = "You just posted an article!!"
       redirect_to @article
    else
      @title = "Write an Article"
      render 'new'
     
    end
  end

end
