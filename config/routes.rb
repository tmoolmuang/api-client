Rails.application.routes.draw do
  resources :aliens do
    resources :powers
  end  
  
  root 'welcome#index'
end
