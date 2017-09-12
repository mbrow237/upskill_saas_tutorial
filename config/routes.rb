Rails.application.routes.draw do
  root to:'pages#home'  # Controller#action
  get 'about', to: 'pages#about'
  resources :contacts
end
