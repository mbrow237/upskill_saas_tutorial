Rails.application.routes.draw do
  root to:'pages#home'  # Controller#action
  get 'about', to: 'pages#about'
  resources :contacts #get 'contacts/new', to 'contacts#new' #Also resources add routes to new, edit, show, update, and destroy pages
end
