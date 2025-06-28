# frozen_string_literal: true

class CreateAEstados < ActiveRecord::Migration[7.2]
  def up
   unless table_exists?(:a_estados) 
    create_table :a_estados do |t|
      t.string   :descricao
      t.string   :uf
      t.string   :created_by
      t.string   :updated_by
      t.datetime :deleted_at
      t.timestamps
    end
   end 
  end

  def down
    drop_table :a_estados if table_exists?(:a_estados)
  end
end
