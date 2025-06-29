# frozen_string_literal: true

class ACor < ApplicationRecord
  has_many :a_animais 

  def to_s
    descricao
  end
end
