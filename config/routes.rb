Rails.application.routes.draw do
  resources :powers
  resources :aliens
  root 'welcome#index'
end
