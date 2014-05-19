# config/routes.rb

Bloccit::Application.routes.draw do

  get "topics/index"

  get "topics/new"

  get "topics/show"

  get "topics/edit"

# get "topics/index"

#  get "topics/new"

#  get "topics/show"

#  get "topics/edit"

  devise_for :users

  resources :topics

  resources :posts


  get 'about' => 'welcome#about'

  root to: 'welcome#index'
end
