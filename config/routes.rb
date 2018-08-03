Rails.application.routes.draw do
  # [...]
  namespace :api, defaults: { format: :json } do
    namespace :v1 do
      resources :posts do
        resources :transactions, only:[:index, :create, :update]
      end
      resources :users, only:[:index, :show, :update] do
        member do
          get '/purchased', to: 'users#purchased'
        end
      end
      get '/sold', to: 'users#sold'
      post '/login', to: 'login#login'
    end
  end
end
