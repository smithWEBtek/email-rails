Rails.application.routes.draw do
get '/login' => "sessions#home"
post '/sessions' => "sessions#create"
get '/logout' => "sessions#destroy"
get '/auth/:provider/callback' => 'sessions#create'


  resources :users
 
end