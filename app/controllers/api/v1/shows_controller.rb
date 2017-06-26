class Api::V1::ShowsController < ApplicationController
  # before_action :authorize_user!

  def index
    shows = Show.all
    render json: shows
  end

  def create
    show = Show.create(show_params)
    render json: show
  end

  def update
    show = Show.find(params[:id])
    show.update(show_params)
    render json: show
  end

  def destroy
    show = Show.find(params[:id])
    show.destroy
    render json: show
  end

  private

  def show_params
    params.require(:show).permit(:name)
  end
end
