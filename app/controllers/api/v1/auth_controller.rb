class Api::V1::AuthController < ApplicationController

  # def create
  #   user = Account.find_by(username: params[:username])
  #   if user.present? && user.authenticate(params[:password])
  #     token = JWT.encode({user_id: user.id}, ENV['JWT_SECRET'], 'HS256')
  #     render json: {
  #       user: {
  #         username: user.username
  #       },
  #       token: token
  #     }
  #   else
  #     render json: {error: 'No username or password found'}
  #   end
  # end
end
