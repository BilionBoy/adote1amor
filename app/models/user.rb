# frozen_string_literal: true

class User < ApplicationRecord
  devise :database_authenticatable, :registerable,:recoverable, :rememberable, :validatable
  # Adicione aqui quaisquer métodos ou validações padrão para seus modelos
  
  def admin?
    g_tipo_usuario&.nome == 'ADMIN'
  end
end