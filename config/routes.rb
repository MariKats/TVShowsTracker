Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      resources :shows
      resources :seasons, only: [:index, :create]
      resources :episodes, only: [:index, :create, :show]
      post '/auth', to: 'auth#create'
      # get '/shows/:id/seasons', to: 'shows#get_seasons'
    end
  end
end
