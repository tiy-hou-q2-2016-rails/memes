Rails.application.routes.draw do

  get 'images' => 'images#index', as: :images
  get 'images/new' => 'images#new', as: :new_image
  get 'images/:id' => 'images#show', as: :image
  post 'images' => 'images#create'
  

  root 'homepage#show'

end
