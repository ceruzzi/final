Rails.application.routes.draw do


  root 'subforums#index'

  get '/subforums' => 'subforums#index'
  get '/subforums/new' => 'subforums#new'
  post '/subforums'=>'subforums#create'
  get '/subforums/:id' => 'subforums#show', :as=>'subforum'

  get '/topics' => 'topics#index'
  get '/topics/new' => 'topics#new'
  post '/topics/:subforum_id'=>'topics#create'
  get '/topics/:id' => 'topics#show', :as=>'topic'
  delete '/topics/:id' => 'topics#destroy'
  get '/topics/:id/edit' => 'topics#edit',:as=>'edit'
  patch '/topics/:id' => 'topics#update'


  post '/comment/:topic_id'=>'comments#create', :as=>'comments'
 # get '/topics/:id/comment' => 'topics#comment'
end
