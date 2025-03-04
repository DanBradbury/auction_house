Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  # Defines the root path route ("/")
  root "welcome#index"
  resources :users
  resources :worlds
  #resources :fights
  post "/fights", to: "fights#index"
  post "/chat", to: "chat#index"
  post "/pawn", to: "pawns#index"
  post "/trigger_fight", to: "fights#trigger"
  post "/shop", to: "shop#index"

  get "/test", to: "users#test"
  get "/sign_out", to: "welcome#sign_out"
  get "/setup", to: "welcome#setup"
  post "/messages", to: "welcome#chat"
end
