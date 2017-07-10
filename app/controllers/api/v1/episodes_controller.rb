class Api::V1::EpisodesController < ApplicationController
  def index
    episodes = Episode.all
    render json: episodes
  end

  def show
    episode = Episode.find(params[:id])
    render json: episode
  end

  def create
    episode = Episode.find_or_create_by(season_id: episode_params[:season_id], season_number: episode_params[:number], name: episode_params[:name], number: episode_params[:number], time: episode_params[:time])
    render json: episode
  end

  def update
    episode = Episode.find(params[:id])
    episode.update(episode_params)
    render json: episode
  end

  def destroy
    episode = Episode.find(params[:id])
    episode.destroy
    render json: episode
  end

  private

  def episode_params
    params.require(:episode).permit(:season_id, :name, :number, :season_number, :watched, :time)
  end
end
