Rails.application.routes.draw do
  get 'welcome_pages/contact_us'
  root 'welcome_pages#index'
end
