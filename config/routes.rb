Rails.application.routes.draw do
  if Rails.env.development?
    mount GraphiQL::Rails::Engine, at: "/graphiql", graphql_path: "/graphql"
  end
  post "/graphql", to: "graphql#execute"

  namespace :api, defaults: { format: :json } do
    namespace :v1 do
      resources :tours, only: :update
      resources :views, only: %i[create update]
      resources :users, only: :update
      resources :points, only: :update
      resources :visits, only: :create
    end
  end

  root 'dashboard#index'
end
