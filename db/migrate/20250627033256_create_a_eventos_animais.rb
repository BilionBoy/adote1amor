# frozen_string_literal: true

class CreateAEventosAnimais < ActiveRecord::Migration[7.2]
  def up
    unless table_exists?(:a_eventos_animais)
      create_table :a_eventos_animais do |t|
        t.references :a_animal, foreign_key: true
        t.references :a_tipo_evento, foreign_key: true
        t.references :a_status, foreign_key: true
        t.string     :created_by
        t.string     :updated_by
        t.datetime   :deleted_at
        t.timestamps
      end
    end
  end

  def down
    drop_table :a_eventos_animais if table_exists?(:a_eventos_animais)
  end
end
