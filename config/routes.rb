Rails.application.routes.draw do
  namespace :api do
  get '/questions' => 'questions#index'

  post '/questions' => 'questions#create'
  post "/users" => "users#create"
  post "/sessions" => "sessions#create"
  
  get '/questions/:id' => 'questions#show'
  patch '/questions/:id' => 'questions#update'
  delete '/questions/:id'=> 'questions#destroy'  
  end
end
