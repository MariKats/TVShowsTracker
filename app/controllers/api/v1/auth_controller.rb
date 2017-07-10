class Api::V1::AuthController < ApplicationController
  before_action :authorize_user!, only: [:show]

  def show
    render json: {id: current_user.id, username: current_user.username}
  end

  def create
     user = User.find_by(username: params[:username])
      if user.present? && user.authenticate(params[:password])
        token = JWT.encode({user_id: user.id}, "Ilikechocolate", "HS256")
       render json: {
        id: user.id,
        username: user.username,
        jwt: JWT.encode({user_id: user.id}, "Ilikechocolate", "HS256")
       }
     else
      render json: {error: 'Username or password incorrect'}, status: 404
    end
  end

end
