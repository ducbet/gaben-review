Rails.application.routes.draw do
  scope "(:locale)", locale: /en|vi/ do
    get  "/signup", to: "users#new"
    post "/signup", to: "users#create"
    resources :games, only: [:index]
    resources :users, only: [:show]
    root "games#index"
  end
end
