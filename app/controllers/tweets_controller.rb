class TweetsController < ApplicationController
  def index
    # @tweets = Tweet.order("created_at DESC").page(params[:page]).per(5)
  end

  def new
  end

  def create
    # Tweet.create(article_params)
  end

  def article_params
    # params.permit(:title, :image, :text)
  end
end
