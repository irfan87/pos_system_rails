Rails.application.routes.draw do
  get 'sessions/new'

  resources :users do
 		resources :shops
  end

  resources :sessions

  get 'signup', to: 'users#new', as: 'signup'
  get 'signin', to: 'sessions#new', as: 'signin'
  get 'logout', to: 'sessions#destroy', as: 'logout'
  get 'contact_us', to: 'welcome_pages#contact_us', as: 'contact_us'
 	get 'settings', to: 'settings#index', as: 'settings'

  root 'welcome_pages#index'
end