class ArticlesController < ApplicationController
  def index
   @articles = if params[:query].present?
     Article.search(params[:query])
   else
    Article.all
   end
 end
 
  def show
    @article = Article.find(params[:id])
  end

  def new
    @article = Article.new  
  end 

  def edit
    @article = Article.find(params[:id])
  end
 
  def create
    @article = Article.new(article_params)
 
    if @article.save
      redirect_to @article
     else
     render 'new'
    end
  end

  def update
    @article = Article.find(params[:id])
 
   if @article.update(article_params)
      redirect_to @article
   else
     render 'edit'
   end
  end

  def destroy
    @article = Article.find(params[:id])
    @article.destroy
 
    redirect_to articles_path
  end

  def autocomplete
    render json: Article.search(params[:query], autocomplete: false, limit: 10).map do |book|
      { title: book.title, value: book.id }
    end
  end

  private
  def article_params
    params.require(:article).permit(:title, :text)
  end
end