# frozen_string_literal: true

class CreateACidades < ActiveRecord::Migration[7.2]
  def up
   unless table_exists?(:a_cidades)
    create_table   :a_cidades do |t|
      t.string     :descricao
      t.references :a_estado
      t.string     :created_by
      t.string     :updated_by
      t.datetime   :deleted_at
      t.timestamps
    end
   end
  end

  def down
    drop_table :a_cidades if table_exists?(:a_cidades)
  end
end
