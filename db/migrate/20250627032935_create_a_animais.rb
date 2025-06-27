# frozen_string_literal: true

class CreateAAnimais < ActiveRecord::Migration[7.2]
  def up
    create_table :a_animais do |t|
      t.string :nome
      t.string :idade
      t.string :descricao
      t.boolean :castrado
      t.datetime :visto_por_ultimo
      t.references :a_especie
      t.references :a_cor
      t.references :a_bairro
      t.references :a_porte
          
      t.string :created_by
      t.string :updated_by
      t.datetime :deleted_at
      t.timestamps
    end
  end

  def down
    drop_table :a_animais
  end
end
