Rails.application.routes.draw do
  #index
  root 'books#index'

  #registro de usuarios
  resources :users, only: [:new, :create]

  #Crud productos
  resources :books #Rutas libros
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
