Rails.application.routes.draw do

  get 'users/show'

  get 'employers/show'

  get 'bootcamps/show'

  resources :jobs
  resources :pages
  devise_for :users
  devise_for :bootcamps
  resources :bootcamps
  devise_for :employers
  resources :employers
  resources :users

  root to: 'pages#home'

  get 'jobs' => 'jobs#index'
  get 'post_job' => 'jobs#new'
  get 'about' => 'pages#about'
  get 'suggestions' => 'pages#suggestions'
  get 'user_profile' => 'user#show'
  get 'bootcamp_profile' => 'bootcamps#show'
  get 'employer_profile' => 'employer#show'

  devise_scope :user do
    get "user_signup", to: "devise/registrations#new"
    get "user_login", to: "devise/sessions#new"
    get "user_logout", to: "devise/sessions#destroy"

    get "bootcamp_signup", to: "devise/registrations#new"
    get "bootcamp_login", to: "devise/sessions#new"
    get "bootcamp_logout", to: "devise/sessions#destroy"

    get "employer_signup", to: "devise/registrations#new"
    get "employer_login", to: "devise/sessions#new"
    get "employer_logout", to: "devise/sessions#destroy"
  end

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
