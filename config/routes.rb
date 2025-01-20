Rails.application.routes.draw do
  get "render/index"
  resources :chat_clientes
  resources :usuarios
  get "up" => "rails/health#show", as: :rails_health_check

  # Defines the root path route ("/")
  root "usuarios#index"
end
