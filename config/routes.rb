Rails.application.routes.draw do
  root "lists#index"
  resources :books
  resources :lists
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
