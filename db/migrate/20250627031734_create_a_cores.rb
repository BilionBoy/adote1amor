# frozen_string_literal: true

class CreateACores < ActiveRecord::Migration[7.2]
  def up
    unless table_exists?(:a_cores)
      create_table :a_cores do |t| 
        t.string   :descricao
        t.string   :created_by
        t.string   :updated_by
        t.datetime :deleted_at
        t.timestamps
      end
    end
  end

  def down
    drop_table :a_cores if table_exists?(:a_cores) 
  end
end