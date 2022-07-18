Rails.application.routes.draw do
  root 'home#index'
  devise_for :users
#   devise_for :users, controllers: { 
#     sessions: 'users/sessions',
#     registrations: 'users/registrations'

# }
  
  resources :internets
  resources :waters
  resources :suigas do
    resources :customers
  end
  resources :electricities
  resources :categories
  resources :customers
  resources :invoices
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
