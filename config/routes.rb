Rails.application.routes.draw do
  get 'posts/index'

  get '/' => "home#total"
  get "posts/new" => "posts#new"
  post "posts/create" => "posts#create"
  get "index" => "posts#index"
  get "posts/:id/edit" => "posts#edit"
  post "posts/:id/update" => "posts#update"
end
