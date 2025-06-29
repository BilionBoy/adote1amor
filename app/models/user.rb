# frozen_string_literal: true

class User < ApplicationRecord
  devise     :database_authenticatable, :registerable,:recoverable, :rememberable, :validatable
  belongs_to :g_tipo_usuario, optional: true
         
  # Adicione aqui quaisquer métodos ou validações padrão para seus modelos
  validates :nome,              presence: true
  validates :email,             presence: true, uniqueness: true
  validates :g_tipo_usuario_id, presence: true

  def admin?
    g_tipo_usuario&.descricao == 'ADMIN'
  end

  def tutor?
    g_tipo_usaurio&.descricao == 'TUTOR'
  end

    private

  def set_default_g_tipo_usuario
    return if g_tipo_usuario_id.present?
    
    cliente_tipo = GTipoUsuario.find_by(descricao: 'TUTOR')
    if cliente_tipo
      self.g_tipo_usuario = cliente_tipo
    else
      # Se não encontrar, cria um erro personalizado
      errors.add(:g_tipo_usuario_id, 'Tipo de usuário TUTOR não encontrado no sistema')
    end
  end
end