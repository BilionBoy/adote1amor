# frozen_string_literal: true

class CreateAEspecies < ActiveRecord::Migration[7.2]
  def up
    unless table_exists?(:a_especies)
      create_table :a_especies do |t|
        t.string   :descricao
        t.string   :created_by
        t.string   :updated_by
        t.datetime :deleted_at
        t.timestamps
      end
    end
  end

  def down
    drop_table :a_especies if table_exists?(:a_especies)
  end
end
