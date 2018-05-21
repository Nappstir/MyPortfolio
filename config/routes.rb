Rails.application.routes.draw do
  root to: 'pages#home'
  resources :portfolios
  get 'pages/about'
  get 'pages/contact'
  resources :blogs
end
