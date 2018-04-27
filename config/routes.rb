Rails.application.routes.draw do
  root controller: :restaurants, action: :index
  # root to: "products#index"
  resources :products
end
