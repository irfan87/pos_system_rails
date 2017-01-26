Rails.application.routes.draw do
  get 'contact_us', to: 'welcome_pages#contact_us', as: 'contact_us'
  root 'welcome_pages#index'
end
