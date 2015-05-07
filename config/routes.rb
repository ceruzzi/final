Rails.application.routes.draw do


  root 'topics#index'

  get '/topics' => 'topics#index'
  get '/topics/new' => 'topics#new'
  post '/topics'=>'topics#create'
  get '/topics/:id' => 'topics#show', :as=>'topic'
  delete '/topics/:id' => 'topics#destroy'
  get '/topics/:id/edit' => 'topics#edit',:as=>'edit'
  patch '/topics/:id' => 'topics#update'
end
