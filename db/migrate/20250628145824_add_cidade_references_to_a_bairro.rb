# frozen_string_literal: true
class AddCidadeReferencesToABairro < ActiveRecord::Migration[7.2]
  def up
    unless column_exists?(:a_bairros, :a_cidade_id)
      add_reference :a_bairros, :a_cidade, null: false, foreign_key: true
    end
  end

  def down
    if column_exists?(:a_bairros, :a_cidade_id)
      remove_reference :a_bairros, :a_cidade, foreign_key: true
    end
  end
end