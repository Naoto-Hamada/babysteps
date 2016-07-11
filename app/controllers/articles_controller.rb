class ArticlesController < ApplicationController

  def index
    @articles = Article.order("created_at DESC").page(params[:page]).per(5)
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
