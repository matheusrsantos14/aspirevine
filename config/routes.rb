Rails.application.routes.draw do



  get 'bootcamps/show'

  resources :jobs
  resources :pages
  devise_for :users
  devise_for :bootcamps
  resources :bootcamps

  root to: 'pages#home'

  get 'jobs' => 'jobs#index'
  get 'about' => 'pages#about'
  get 'suggestions' => 'pages#suggestions'
  get 'user_profile' => 'pages#user_profile'
  get 'bootcamp_profile' => 'bootcamps#show'

  devise_scope :user do
  get "user_signup", to: "devise/registrations#new"
  get "user_login", to: "devise/sessions#new"
  get "user_logout", to: "devise/sessions#destroy"

  get "bootcamp_signup", to: "devise/registrations#new"
  get "bootcamp_login", to: "devise/sessions#new"
  get "bootcamp_logout", to: "devise/sessions#destroy"
  end

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
