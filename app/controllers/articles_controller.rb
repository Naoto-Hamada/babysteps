class ArticlesController < ApplicationController

  def index
    @articles = Article.all
  end

  def new
  end

  def create
    Article.create(article_params)
  end

  def article_params
    params.permit(:title, :image, :text)
  end
end
