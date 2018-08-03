Rails.application.routes.draw do
  # [...]
  namespace :api, defaults: { format: :json } do
    namespace :v1 do
      resources :posts
      resources :users, only:[:index, :show, :update] do
        member do
          get '/purchased', to: 'users#purchased'
        end
      end
      resources :transactions, only:[:index, :create, :update]
      get '/sold', to: 'users#sold'
      post '/login', to: 'login#login'
    end
  end
end
