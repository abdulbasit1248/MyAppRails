Rails.application.routes.draw do
 root 'pages#home'
 get 'about', to: 'pages#about'
 get "sessions/destroy", as: :logout 
#  get ‘/stories’, to: redirect(‘/articles’)
#  resources :pages
#  resources :users, only: [:index, :new, :create]
 namespace :admin do
  resources :articles, :comments
 end
end
