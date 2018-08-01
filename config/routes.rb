Rails.application.routes.draw do
  # [...]
  namespace :api, defaults: { format: :json } do
    namespace :v1 do
      resources :posts
      resources :users, only:[:index, :show, :update]
      resources :transactions, only:[:index, :create]
      get '/purchased', to: 'users#purchased'
      get '/sold', to: 'users#sold'
      post '/login', to: 'login#login'
    end
  end
end
