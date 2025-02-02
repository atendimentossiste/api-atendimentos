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

ActiveRecord::Schema[8.0].define(version: 2025_01_30_175608) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "pg_catalog.plpgsql"

  create_table "chat_clientes", force: :cascade do |t|
    t.string "nm_cliente"
    t.string "nr_cliente"
    t.string "mensagem"
    t.boolean "status_chat"
    t.string "resposta_ia"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "usuario_id", default: 1, null: false
    t.index ["usuario_id"], name: "index_chat_clientes_on_usuario_id"
  end

  create_table "chats", force: :cascade do |t|
    t.string "nm_cliente"
    t.string "nr_cliente"
    t.string "mensagem"
    t.boolean "status_chat"
    t.string "resposta_ia"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "usuarios", force: :cascade do |t|
    t.string "nome"
    t.decimal "numero"
    t.boolean "tipo_de_envio"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "email"
    t.string "senha"
    t.string "descricao"
  end

  add_foreign_key "chat_clientes", "usuarios"
end
