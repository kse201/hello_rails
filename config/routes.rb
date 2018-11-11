Rails.application.routes.draw do
  get '/login', to: 'sessions#new'
  post '/login', to: 'sessions#create'
  delete '/logout', to: 'sessions#destroy'

  get '/signup', to: 'users#new'
  post '/signup', to: 'users#create'

  get 'static_pages/help'

  get 'static_pages/about'

  root to: 'static_pages#home'

  get '/about', to: 'static_pages#about'
  get '/help', to: 'static_pages#help'
  get '/home', to: 'static_pages#home'
  get '/contact', to: 'static_pages#contact'

  resources :users

  resources :account_activations, only: %i[edit]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
