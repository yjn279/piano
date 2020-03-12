Rails.application.routes.draw do
  get '/' => 'home#top'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get '/about' => 'home#about'
  get '/signin' => 'home#signin'
  get '/signup' => 'home#signup'
  get '/main' => 'home#main'
  get '/record' => 'home#record'
  get 'posts/index' => 'posts#index'
end
