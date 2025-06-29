# frozen_string_literal: true

class ACidade < ApplicationRecord
  belongs_to :a_estado
  has_many   :a_bairros

  def to_s
    descricao
  end
end
