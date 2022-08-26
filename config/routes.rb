Rails.application.routes.draw do
 
  root "home#index"
  get  "about", to: "pages#about"
  get  "mission", to: "pages#mission"
  get  "tariffs", to: "pages#tariffs"
  get  "services", to: "pages#services"
  get  "magazine", to: "pages#magazine"
  get  "contacts", to: "pages#contacts"
  get  "privacy_policy", to: "pages#privacy_policy"

  get "dashboard", to: "profiles#dashboard"
  get "dashboard/brand", to: "profiles#brand"
  get "dashboard/area", to: "profiles#area"
  
  post "profiles/edit", to: "profiles#update"

  resources :areas
  resources :brands
  resources :gigs

  mount Sidekiq::Web => "/sidekiq" if defined?(Sidekiq)
end
