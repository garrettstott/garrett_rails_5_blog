Rails.application.routes.draw do

  root 'shared#home'

  devise_for :users, controllers: {
        registrations: 'users/registrations',
        sessions: 'users/sessions'
  }

  resources :posts

  get '/blogger/:id', to: 'blogger#show', as: 'blogger'
  get '/like/:id', to: 'posts#like', as: 'like'

  post '/posts/:id/comment', to: 'comments#create', as: 'comments'
end
