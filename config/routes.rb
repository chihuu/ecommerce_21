Rails.application.routes.draw do
  resources :orders
  get "static_pages/home"

  root "static_pages#home"
end
