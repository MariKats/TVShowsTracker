class Api::V1::ShowsController < ApplicationController
  # before_action :authorize_user!

  def index
    shows = Show.all
    render json: shows
  end

  def show
    show = Show.find(params[:id])
    render json: show
  end

  def create
    show = Show.find_or_create_by(show_params)
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
    params.require(:show).permit(:name, :tvmaze_id, :image, :seasons)
  end
end
