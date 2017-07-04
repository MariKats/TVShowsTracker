Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      resources :shows, only: [:index, :create, :show, :destroy]
      resources :seasons, only: [:index, :create, :show, :destroy]
      resources :episodes, only: [:index, :create, :show, :destroy]
      post '/auth', to: 'auth#create'
      # get '/shows/:id/seasons', to: 'shows#get_seasons'
    end
  end
end
