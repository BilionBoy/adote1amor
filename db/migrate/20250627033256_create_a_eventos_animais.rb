# frozen_string_literal: true

class CreateAEventosAnimais < ActiveRecord::Migration[7.2]
  def up
    create_table :a_eventos_animais do |t|
      t.references :a_animal
      t.references :a_tipo_evento
      t.references :a_status
          
      t.string :created_by
      t.string :updated_by
      t.datetime :deleted_at
      t.timestamps
    end
  end

  def down
    drop_table :a_eventos_animais
  end
end
