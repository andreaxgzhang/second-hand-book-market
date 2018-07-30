Rails.application.routes.draw do
  # [...]
  namespace :api, defaults: { format: :json } do
    namespace :v1 do
      resources :posts do
        resources :transactions, only:[:index, :create]
      end
      resources :users, only:[:index, :show]
      post '/login', to: 'login#login'
    end
  end
end
