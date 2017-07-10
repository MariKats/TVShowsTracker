class Api::V1::ShowsController < ApplicationController
  before_action :authorize_user!

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
    user_show = UserShow.find_or_create_by(show_id: show.id, user_id: @current_user.id)
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
    show.seasons.each {|s| s.destroy }
    season_ids = []

    show.seasons.each { |season|
      season_ids.push(season.id)
    }
    episodes = []
    season_ids.each {|i| episodes.push(Episode.where(season_id: i))}
    episodes.flatten.each{|e| e.destroy}

    render json: show
  end

  private

  def show_params
    params.require(:show).permit(:name, :tvmaze_id, :image, :rating,
    :seasons_attributes=>[:id, :number, :show_id, :number_of_episodes],
    :episodes_attributes=>[:id, :season_id, :season_number, :number, :name, :watched])
  end
end
