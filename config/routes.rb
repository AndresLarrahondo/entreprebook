Rails.application.routes.draw do
  #index
  root 'books#index'

  #Rutas
  resources :books #Rutas libros
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
