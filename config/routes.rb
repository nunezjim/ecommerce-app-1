Rails.application.routes.draw do
  get '/products' => 'products#index'
  get '/products/new' => 'products#new'
  post '/products' => 'products#create'
  get '/products/:id' => 'products#show'
  get '/products/:id/edit' => 'products#edit'
  patch '/products/:id' => 'products#update'
  delete '/products/:id' => 'products#destroy'
end
  #get '/forms' => 'products#forms'

  #post '/products' => 'products#create'

  #post '/forms' => 'products#create'

  # post '/products' => 'products#create'
  #get '/products/:id' => 'products#edit'
