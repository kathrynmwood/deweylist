Rails.application.routes.draw do
  devise_for :users
    root 'home#index'

    resources :books
    resources :lists

    get '/lists/:id/subscribe', to: 'subscriptions#create', as: 'subscription'

    # post '/lists/:id', to: 'subscriptions#create', as: 'subscription'
    # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
