Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      resources :shows, only: [:index, :create, :update, :destroy]
      post '/auth', to: 'auth#create'
    end
  end
end
