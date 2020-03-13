Rails.application.routes.draw do
  get 'posts/index' => "posts#index"
  get "posts/new" => "posts#new"
  get "posts/:id" => "posts#show"
  post "posts/create" => "posts#create"
  get "posts/:id/edit" => "posts#edit"
  post "posts/:id/update" => "posts#update"
  get 'top' =>'home#top'
  get 'about' =>'home#about'
  get 'record' =>'home#record'
  get 'testtop' => 'home#testtop'
  get 'main' => 'home#main'
  get 'signin' => 'home#signin'
  get 'signup' => 'home#signup'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
