class Api::V1::SeasonsController < ApplicationController
  def index
    seasons = Season.all
    render json: seasons
  end

  def create
    season = Season.find_or_create_by(season_params)
    render json: season
  end

  def show
    season = Season.find(params[:id])
    render json: season
  end

  def destroy
    season = Season.find(params[:id])
    season.destroy
    render json: season
  end

  private

  def season_params
    params.require(:season).permit(:show_id, :number, :number_of_episodes)
  end
end
