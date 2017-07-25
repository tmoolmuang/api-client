Rails.application.routes.draw do
  root 'displays#home'
  
  resources :displays
end
