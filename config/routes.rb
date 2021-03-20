Rails.application.routes.draw do
  devise_for :users

  # shortcut to create the paths and urls
  resources :reports
  resources :appointments

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root 'home#index'
end
