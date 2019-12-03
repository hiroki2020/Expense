Rails.application.routes.draw do
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  get 'posts/index'

  get '/' => "home#top"
  get "posts/new" => "posts#new"
  post "posts/create" => "posts#create"
  get "index" => "posts#index"
  get "posts/:id/edit" => "posts#edit"
  post "posts/:id/update" => "posts#update"
end
