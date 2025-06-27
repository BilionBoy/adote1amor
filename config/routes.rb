Rails.application.routes.draw do
  resources :a_eventos_animais
  resources :a_animais
  resources :a_especies
  resources :a_portes
  resources :a_bairros
  resources :a_cor
  resources :a_status
  resources :a_tipo_eventos
  root 'home#index'
  get 'home/index'

  # Rotas Scaffold

  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get 'up' => 'rails/health#show', as: :rails_health_check
end
