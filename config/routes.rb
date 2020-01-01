Rails.application.routes.draw do
  devise_for :users
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  post "/logout" => "user_progates#logout"
  post "/login" => "user_progates#login"
  get "/login" => "user_progates#login_form"
  post "user_progates/:id/update" => "user_progates#update"
  get "user_progates/:id/edit" => "user_progates#edit"
  post "user_progates/create" => "user_progates#create"
  get "signup" => "user_progates#new"
  get 'posts/index' 
  get "user_progates/index" => "user_progates#index"
  get "user_progates/:id" => "user_progates#show"
  root "home#top"
  get "posts/new" => "posts#new"
  post "posts/create" => "posts#create"
  get "index" => "posts#index"
  get "posts/:id/edit" => "posts#edit"
  post "posts/:id/update" => "posts#update"
  get "posts/:id" => "posts#show"
  
  resources :posts, only: [:destroy]
end
