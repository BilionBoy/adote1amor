# frozen_string_literal: true

class AAnimal < ApplicationRecord
  belongs_to :a_especie
  belongs_to :a_cor
  belongs_to :a_sexo_animal
  belongs_to :a_porte
  belongs_to :a_bairro
end
