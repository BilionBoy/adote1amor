# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema[7.2].define(version: 2025_06_27_033256) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "a_animais", force: :cascade do |t|
    t.string "nome"
    t.string "idade"
    t.string "descricao"
    t.boolean "castrado"
    t.datetime "visto_por_ultimo"
    t.bigint "a_especie_id"
    t.bigint "a_cor_id"
    t.bigint "a_bairro_id"
    t.bigint "a_porte_id"
    t.string "created_by"
    t.string "updated_by"
    t.datetime "deleted_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["a_bairro_id"], name: "index_a_animais_on_a_bairro_id"
    t.index ["a_cor_id"], name: "index_a_animais_on_a_cor_id"
    t.index ["a_especie_id"], name: "index_a_animais_on_a_especie_id"
    t.index ["a_porte_id"], name: "index_a_animais_on_a_porte_id"
  end

  create_table "a_bairros", force: :cascade do |t|
    t.string "descricao"
    t.string "created_by"
    t.string "updated_by"
    t.datetime "deleted_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "a_cor", force: :cascade do |t|
    t.string "descricao"
    t.string "created_by"
    t.string "updated_by"
    t.datetime "deleted_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "a_especies", force: :cascade do |t|
    t.string "descricao"
    t.string "created_by"
    t.string "updated_by"
    t.datetime "deleted_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "a_eventos_animais", force: :cascade do |t|
    t.bigint "a_animal_id"
    t.bigint "a_tipo_evento_id"
    t.bigint "a_status_id"
    t.string "created_by"
    t.string "updated_by"
    t.datetime "deleted_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["a_animal_id"], name: "index_a_eventos_animais_on_a_animal_id"
    t.index ["a_status_id"], name: "index_a_eventos_animais_on_a_status_id"
    t.index ["a_tipo_evento_id"], name: "index_a_eventos_animais_on_a_tipo_evento_id"
  end

  create_table "a_portes", force: :cascade do |t|
    t.string "descricao"
    t.string "created_by"
    t.string "updated_by"
    t.datetime "deleted_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "a_status", force: :cascade do |t|
    t.string "descricao"
    t.string "created_by"
    t.string "updated_by"
    t.datetime "deleted_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "a_tipo_eventos", force: :cascade do |t|
    t.string "descricao"
    t.string "created_by"
    t.string "updated_by"
    t.datetime "deleted_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end
end
