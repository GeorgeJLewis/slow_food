Rails.application.routes.draw do
  root controller: :restaurants, action: :index
<<<<<<< HEAD
=======
  # root to: "products#index"
>>>>>>> admin_form
  resources :products
end
