Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      resources :shows
      resources :seasons, only: [:index, :create, :show, :destroy]
      resources :episodes, only: [:index, :create, :update, :show, :destroy]
      post '/auth', to: 'auth#create'
      get '/current_user', to: 'auth#show'
    end
  end
end
