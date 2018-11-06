Rails.application.routes.draw do
  scope "(:locale)", locale: /en|vi/ do
    namespace :admin do
      root "static_pages#home"
      resources :games, only: [:new, :create]
    end
    delete "/logout", to: "sessions#destroy"
    get  "/signup", to: "users#new"
    get "/login", to: "sessions#new"
    get "sessions/new"
    post "/login", to: "sessions#create"
    post "/signup", to: "users#create"
    resources :games, only: [:index, :show]
    resources :users, only: [:show, :edit, :update]
    resources :reviews, only: [:create, :edit, :update]
    resources :replies, only: [:create]
    get "static_pages/home"
    root "static_pages#home"
  end
end
