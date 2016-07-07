Rails.application.routes.draw do

  root 'homepage#show'
  get 'private' => 'homepage#private', as: :private

  get 'session/new' => 'session#new', as: :sign_in
  post 'session/new'=> 'session#create'
  delete 'session' => 'session#delete', as: :sign_out
end
