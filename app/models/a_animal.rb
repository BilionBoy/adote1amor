# frozen_string_literal: true

class AAnimal < ApplicationRecord
  belongs_to :a_especie
  belongs_to :a_cor
  belongs_to :a_sexo_animal
  belongs_to :a_porte
  belongs_to :a_bairro

  has_many :a_eventos_animais, dependent: :destroy
 #has_many :a_posts, dependent: :destroy 

  validates :nome,      presence: true
  validates :idade,     presence: true
  validates :descricao, presence: true

end
