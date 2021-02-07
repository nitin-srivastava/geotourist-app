Rails.application.routes.draw do

  namespace :api, defaults: { format: :json } do
    namespace :v1 do
      resources :tours, only: :update
      resources :views, only: %i[create update]
      resources :users, only: :update
      resources :points, only: :update
      resources :visits, only: :create
    end

    namespace :v2 do
      post "/graphql", to: "graphql#execute"
    end
  end

  if Rails.env.development?
    mount GraphiQL::Rails::Engine, at: "/api/v2/graphiql", graphql_path: "/api/v2/graphql"
  end

  root 'dashboard#index'
end
