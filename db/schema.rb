# encoding: UTF-8
# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 20160523213201) do

  create_table "destinos", force: :cascade do |t|
    t.string   "nome"
    t.string   "descricao"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "entrada_produtos", force: :cascade do |t|
    t.string   "data"
    t.string   "utilizador"
    t.integer  "itemProduto_id"
    t.integer  "fornecedor_id"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
  end

  add_index "entrada_produtos", ["fornecedor_id"], name: "index_entrada_produtos_on_fornecedor_id"
  add_index "entrada_produtos", ["itemProduto_id"], name: "index_entrada_produtos_on_itemProduto_id"

  create_table "estoques", force: :cascade do |t|
    t.string   "nome"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "fornecedores", force: :cascade do |t|
    t.string   "nome"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "produtos", force: :cascade do |t|
    t.string   "nome"
    t.integer  "unidade"
    t.string   "setor"
    t.float    "valor_referencia"
    t.float    "valor_venda"
    t.integer  "saldo"
    t.integer  "estoque_id"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
  end

  add_index "produtos", ["estoque_id"], name: "index_produtos_on_estoque_id"

end
