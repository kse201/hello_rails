Rails.application.routes.draw do
  get '/signup', to: 'users#new'

  get 'static_pages/help'

  get 'static_pages/about'

  root to: 'static_pages#home'

  get '/about', to: 'static_pages#about'
  get '/help', to: 'static_pages#help'
  get '/home', to: 'static_pages#home'
  get '/contact', to: 'static_pages#contact'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
