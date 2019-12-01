Rails.application.routes.draw do
  get 'posts/index'

  get '/' => "home#top"
  get "posts/new" => "posts#new"
  post "posts/create" => "posts#create"
  get "login" => "users#login_form"
end
