# frozen_string_literal: true

class AddGTipoUsuarioToUsers < ActiveRecord::Migration[7.2]
  def up
    unless column_exists?(:users, :g_tipo_usuario_id)
      add_reference :users, :g_tipo_usuario, foreign_key: true
    end
  end

  def down
    if column_exists?(:users, :g_tipo_usuario_id)
      remove_reference :users, :g_tipo_usuario, foreign_key: true
    end
  end
end
