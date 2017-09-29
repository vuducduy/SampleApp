Rails.application.routes.draw do
  get 'sessions/new'

  root "static_pages#home"
  get  "home"		=>	"static_pages#home"
  get  "help"		=>	"static_pages#help"
  get  "about"		=>	"static_pages#about"
  get  "contact"	=>	"static_pages#contact"
  get  'signup',  to: 'users#new'
  get    '/login',   to: 'sessions#new'
  post   '/login',   to: 'sessions#create'
  delete '/logout',  to: 'sessions#destroy'
  resources :users

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
