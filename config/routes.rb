Rails.application.routes.draw do

  resources :contacts
  resources :news, only: [:index, :show]
  resources :abouts, only: [:index]                           # get '/about', controller: :about, action: :index
  resources :accessories, only: [:index, :show]
  resources :products, only: [:index, :show]
  devise_for :users, controllers: {
    sessions: 'users/sessions',
    passwords: 'users/passwords',
    registrations: 'users/registrations'
  }
  root 'home#index'

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
