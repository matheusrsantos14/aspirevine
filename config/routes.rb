Rails.application.routes.draw do

  root to: 'pages#home'

  get 'jobs' => 'jobs#index'
  get 'about' => 'pages#about'
  get 'suggestions' => 'pages#suggestions'
  get 'profile' => 'pages#profile'

  devise_scope :user do
  #get "signup", to: "devise/registrations#new"
  get "login", to: "devise/sessions#new"
  get "logout", to: "devise/sessions#destroy"
  end


  resources :jobs
  devise_for :users

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
