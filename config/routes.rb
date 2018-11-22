Rails.application.routes.draw do
  resources :password_resets, only: %i[new create edit update]

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

  resources :users do
    member do
      get :following, :followers
    end
  end

  resources :account_activations, only: %i[edit]
  resources :microposts, only: %i[create destroy]
  resources :relationships, only: %i[create destroy]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
