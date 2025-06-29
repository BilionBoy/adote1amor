# frozen_string_literal: true

class AEstado < ApplicationRecord
  has_many :a_cidades


  def to_s
    descricao
  end
end
