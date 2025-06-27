# frozen_string_literal: true

class CreateACor < ActiveRecord::Migration[7.2]
  def up
    unless table_exists?(:a_cor)
      create_table :a_cor do |t|
        t.string   :descricao
        t.string   :created_by
        t.string   :updated_by
        t.datetime :deleted_at
        t.timestamps
      end
    end
  end

  def down
    drop_table :a_cor if table_exists?(:a_cor)
  end
end
