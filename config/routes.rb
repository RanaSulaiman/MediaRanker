Rails.application.routes.draw do

  resources :works
  resources :votes

  get "books", to:"works#books"

  get "movies", to:"works#movies"

  get "albums", to:"works#albums"

  post 'works/:id/votes', to: "votes#create", as: "upvote"



  get "users", to:"users#index"
  get "users/:id", to:"users#show", as: "user"


  get "login" , to:"sessions#login_form"
  post "login", to:"sessions#login"

  delete "logout", to:"sessions#logout"

end
