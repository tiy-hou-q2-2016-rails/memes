Rails.application.routes.draw do

  get 'images' => 'images#index', as: :images
  get 'images/new' => 'images#new', as: :new_image
  get 'images/:id' => 'images#show', as: :image
  post 'images' => 'images#create'


  root 'homepage#show'
  get 'private' => 'homepage#private', as: :private

  get 'session/new' => 'session#new', as: :sign_in
  post 'session/new'=> 'session#create'
  delete 'session' => 'session#delete', as: :sign_out

  get 'api/images' => 'api/images#index', as: :api_images
  post 'api/images' => 'api/images#create'
end
