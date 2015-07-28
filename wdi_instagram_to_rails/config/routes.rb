Rails.application.routes.draw do


  # route for home
  get "" => "pictures#index"

  # routes in rails
  get "pictures" => "pictures#index"
  get "pictures/new" => "pictures#new"
  post "pictures" => "pictures#create"
  get "pictures/:id" => "pictures#show"
  get "pictures/:id/edit" => "pictures#edit"
  put "pictures/:id" => "pictures#update"
  delete "pictures/:id" => "pictures#destroy"





end
