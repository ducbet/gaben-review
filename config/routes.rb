Rails.application.routes.draw do
  get 'static_pages/home'
  scope "(:locale)", locale: /en|vi/ do
    delete "/logout", to: "sessions#destroy"
    get  "/signup", to: "users#new"
    get "/login", to: "sessions#new"
    get "sessions/new"
    post "/login", to: "sessions#create"
    post "/signup", to: "users#create"
    resources :games, only: [:index, :show]
    resources :users, only: [:show]
    get "static_pages/home"
    root "static_pages#home"
  end
end
