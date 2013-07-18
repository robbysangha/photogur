Photogur::Application.routes.draw do
  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"

  get "pictures" => "pictures#index" # Displays all the pictures in Database
  root "pictures#index"

  get "pictures/:id" => "pictures#show", as: "picture" # Displays the picture user requested

  post "picture" => "picture#create" # Creates and saves an instance of model - 'pictures'
  get "pictures/new" => "picture#new" # Creates an empty instance of model - 'pictures'

end
