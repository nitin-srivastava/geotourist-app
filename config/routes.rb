Rails.application.routes.draw do
  namespace :api, defaults: { format: :json } do
    namespace :v1 do
      resources :tours, only: :update do
        resources :views, only: %i[create update]
      end
      resources :users, only: :update
      resources :points, only: :update
      resources :visits, only: :create
    end
  end

  root 'dashboard#index'
end
