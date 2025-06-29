# frozen_string_literal: true

class AddUserToAAnimais < ActiveRecord::Migration[7.2]
  def up
    unless column_exists?(:a_animais, :user_id)
      add_reference :a_animais, :user, foreign_key: true
    end
  end

  def down
    remove_reference :a_animais, :user, foreign_key: true, if_exists: true
  end
end
