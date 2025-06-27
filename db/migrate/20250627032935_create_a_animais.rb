# frozen_string_literal: true

class CreateAAnimais < ActiveRecord::Migration[7.2]
  def up
    unless table_exists?(:a_animais)
      create_table :a_animais do |t|
        t.string     :nome
        t.string     :idade
        t.string     :descricao
        t.boolean    :castrado
        t.datetime   :visto_por_ultimo
        t.references :a_especie, foreign_key: true
        t.references :a_cor, foreign_key: true
        t.references :a_bairro, foreign_key: true
        t.references :a_porte, foreign_key: true
        t.string     :created_by
        t.string     :updated_by
        t.datetime   :deleted_at
        t.timestamps
      end
    end
  end

  def down
    drop_table :a_animais if table_exists?(:a_animais)
  end
end
