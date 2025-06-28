# frozen_string_literal: true

class User < ApplicationRecord
  belongs_to :g_tipo_usuario, optional: true
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  # Adicione aqui quaisquer métodos ou validações padrão para seus modelos
end
