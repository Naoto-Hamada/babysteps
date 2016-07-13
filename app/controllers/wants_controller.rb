class WantsController < ApplicationController

  def new
  end

  def create
    Want.create(title: want_params[:title], rate: want_params[:rate], text: want_params[:text], user_id: current_user.id)
  end

  private
  def want_params
    params.permit(:title, :rate, :text)
  end
end
