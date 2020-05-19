Rails.application.routes.draw do
  resources :users
  # get ’store/index’ # as: 'store_index' tells Rails to create store_index_path and store_index_url accessor methods
  root 'store#index', as: 'store_index'
  resources :products
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
