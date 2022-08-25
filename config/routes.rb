Rails.application.routes.draw do
  root "home#index"
  get  "about", to: "pages#about"
  get  "contacts", to: "pages#contacts"
  get  "privacy_policy", to: "pages#privacy_policy"
  mount Sidekiq::Web => "/sidekiq" if defined?(Sidekiq)
end
