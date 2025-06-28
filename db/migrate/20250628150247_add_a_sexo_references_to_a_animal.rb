# frozen_string_literal: true

class AddASexoReferencesToAAnimal < ActiveRecord::Migration[7.2]
  def up
    unless column_exists?(:a_animais, :a_sexo_id)
      add_reference :a_animais, :a_sexo, null: false, foreign_key: true
    end
  end

  def down
    if column_exists?(:a_animais, :a_sexo_id)
      remove_reference :a_animais, :a_sexo, foreign_key: true
    end
  end
end
