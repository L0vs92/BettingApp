Rails.application.routes.draw do
  devise_for :users, controllers: { sessions: 'users/sessions' }
  root "pages#index"
  get "betting-odds", to: "pages#show"
  get "about", to: "pages#about"
  get "blog", to: "pages#blog"
  get "contact", to: "pages#contact"
  get "features", to: "pages#features"
  get "pricing", to: "pages#pricing"
  get "dashboard", to: "dashboard#index"
    # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
end
