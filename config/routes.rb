Rails.application.routes.draw do 
  namespace :api do
    namespace :v1 do
      resources :users, only: [:index, :create, :show] do
        resources :orders
      end
      resources :dishes
    end
  end 

  post '/api/v1/signup', to: "api/v1/users#create"  
  post "/api/v1/login", to: "api/v1/sessions#login"
  get '/api/v1/auto-login', to: "api/v1/sessions#auto_login"
end
