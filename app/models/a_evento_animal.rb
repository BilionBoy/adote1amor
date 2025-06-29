# frozen_string_literal: true

class AEventoAnimal < ApplicationRecord
  belongs_to :a_animal
  belongs_to :a_tipo_evento
  belongs_to :a_status
  belongs_to :user
  
  def to_s
    descricao
  end
end
