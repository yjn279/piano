Rails.application.routes.draw do


   post "likes/:post_id/create" => "likes#create"
   post "likes/:post_id/destroy" => "likes#destroy"
get '/' => 'users#testtop'
get 'testtop' => 'users#testtop'
  get "login" => "users#login_form"
  post "login" => "users#login"
  post "logout" => "users#logout"


  get 'kiroku/index' =>"kiroku#index"
  get "kiroku/new" => "kiroku#new"

  get "kiroku/:id" => "kiroku#show"
  post "kiroku/create" => "kiroku#create"

  get 'records/index' =>"records#index"
    post "users/:id/update" => "users#update"
    get "users/:id/edit" => "users#edit"
    post "users/create" => "users#create"

    get "signup" => "users#new"


  get 'users/index' => "users#index"
  get "users/:id" => "users#show"

  get "users/:id/likes" => "users#likes"

  get 'posts/index' => "posts#index"
  get "posts/new" => "posts#new"
  get "posts/:id" => "posts#show"
  post "posts/create" => "posts#create"
  get "posts/:id/edit" => "posts#edit"
  post "posts/:id/update" => "posts#update"
  post "posts/:id/destroy" => "posts#destroy"

  get "records/new" => "records#new"
  post "records/create" => "records#create"


  get 'top' =>'home#top'
  get 'about' =>'home#about'
  get 'record' =>'home#record'

  get 'main' => 'home#main'
  get 'signin' => 'home#signin'
  get 'signup' => 'home#signup'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
