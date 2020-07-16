Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      #scope down to only resources you need
      resources :shows
      resources :seasons, only: [:index, :create, :show, :destroy]
      resources :episodes, only: [:index, :create, :update, :show, :destroy]
      # post '/auth', to: 'auth#create'
      # get '/current_user', to: 'auth#create'
    end
  end
end
