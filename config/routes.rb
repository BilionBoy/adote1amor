Rails.application.routes.draw do
  devise_for :users
  # Root
  root 'landing#index'
  get '/g_admin',         to: 'g_admin#index'
  
  # Rotas Scaffold
  resources :a_eventos_animais
  resources :a_animais
  resources :a_especies
  resources :a_portes
  resources :a_bairros
  resources :a_cores
  resources :a_status
  resources :a_tipo_eventos
  resources :a_sexo_animals
  resources :a_cidades
  resources :a_estados
  resources :g_tipo_usuarios
  
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get 'home/index'
  get 'up' => 'rails/health#show', as: :rails_health_check

  resources :g_admin do
    collection do
      get 'usuarios'
    end
  end
end
