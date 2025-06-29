# frozen_string_literal: true

class ABairro < ApplicationRecord
  belongs_to :a_cidade
  has_many :a_animais
  
  def to_s
    descricao
  end
end
