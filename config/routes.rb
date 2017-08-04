Rails.application.routes.draw do
  #index
  root 'books#index'

  #registro de usuarios
  resources :users, only: [:new, :create]

  # Session de Usuarios
  get 'login', to: 'sessions#new'
  post 'login', to: 'sessions#create'
  delete 'logout', to: 'sessions#destroy'

  #Crud productos
  resources :books #Rutas libros
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
