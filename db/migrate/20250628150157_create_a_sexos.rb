# frozen_string_literal: true

class CreateASexos < ActiveRecord::Migration[7.2]
  def up
    create_table :a_sexos do |t|
      t.string :descricao
      t.string :sigla
          
      t.string :created_by
      t.string :updated_by
      t.datetime :deleted_at
      t.timestamps
    end
  end

  def down
    drop_table :a_sexos
  end
end
