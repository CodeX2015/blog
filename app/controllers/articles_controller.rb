class ArticlesController < ApplicationController

  def index
    @articles = Article.all
  end

  def new

  end

  def create
    @article = Article.new(params.require(:article).permit(:author, :title, :body))
    @article.save
    redirect_to @article
  end

  def destroy
    @article = Article.find(params[:id])
    @article.destroy
    redirect_to @articles
  end
  def show
    @article = Article.find(params[:id])
  end
end
