Rails.application.routes.draw do
  devise_for :users
    root 'home#index'

    resources :books
    resources :lists

    get '/lists/:id/subscribe', to: 'subscriptions#create', as: 'subscription'
    get '/subscriptions', to: 'subscriptions#index', as: 'subscriptions'
    delete '/subscriptions/:id', to: 'subscriptions#destroy', as: 'destroy_subscription'
    # post '/lists/:id', to: 'subscriptions#create', as: 'subscription'
    # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
