Rails.application.routes.draw do
  root to: 'pages#home'

  #for reactjs
  get "/posts/new", to: 'pages#home'
  get "posts/:id", to: 'pages#home'

  # API to handle reactjs
  namespace :api, defaults: { format: :json } do
    namespace :v1 do
      resources :posts, only: [:index, :show, :create]
    end
  end


end
