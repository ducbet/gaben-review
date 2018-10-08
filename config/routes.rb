Rails.application.routes.draw do
  scope "(:locale)", locale: /en|vi/ do
    delete "/logout", to: "sessions#destroy"
    get  "/signup", to: "users#new"
    get "/login", to: "sessions#new"
    get "sessions/new"
    post "/login", to: "sessions#create"
    post "/signup", to: "users#create"
    resources :games, only: [:index, :show]
    resources :users, only: [:show]
    root "games#index"
  end
end
