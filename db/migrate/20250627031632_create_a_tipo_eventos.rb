# frozen_string_literal: true

class CreateATipoEventos < ActiveRecord::Migration[7.2]
  def up
    unless table_exists?(:a_tipo_eventos)
      create_table :a_tipo_eventos do |t|
        t.string    :descricao
        t.string    :created_by
        t.string    :updated_by
        t.datetime  :deleted_at
        t.timestamps
      end
    end
  end

 def down
  drop_table :a_tipo_eventos if table_exists?(:a_tipo_eventos)
 end
end
