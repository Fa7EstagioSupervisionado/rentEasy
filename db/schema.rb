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

ActiveRecord::Schema.define(version: 20140827013853) do

  create_table "alugueis", force: true do |t|
    t.integer  "cliente_id"
    t.integer  "veiculo_id"
    t.datetime "dt_recebimento"
    t.datetime "dt_devolucao"
    t.float    "preco_total"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "alugueis", ["cliente_id"], name: "index_alugueis_on_cliente_id"
  add_index "alugueis", ["veiculo_id"], name: "index_alugueis_on_veiculo_id"

  create_table "categorias", force: true do |t|
    t.string   "nome"
    t.integer  "capacidade_passageiros"
    t.integer  "qt_bagabem_pequena"
    t.integer  "qt_bagabem_grande"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "clientes", force: true do |t|
    t.string   "nome"
    t.integer  "cpf"
    t.datetime "dt_nascimento"
    t.string   "sexo"
    t.string   "email"
    t.integer  "endereco_id"
    t.integer  "telefone"
    t.integer  "nr_habilitacao"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "clientes", ["endereco_id"], name: "index_clientes_on_endereco_id"

  create_table "enderecos", force: true do |t|
    t.integer  "cep"
    t.string   "rua"
    t.string   "bairro"
    t.integer  "numero"
    t.string   "cidade"
    t.string   "estado"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "garagens", force: true do |t|
    t.integer  "endereco_id"
    t.string   "nome"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "garagens", ["endereco_id"], name: "index_garagens_on_endereco_id"

  create_table "locadoras", force: true do |t|
    t.integer  "cnpj"
    t.string   "nome"
    t.integer  "endereco_id"
    t.string   "responsavel"
    t.string   "email"
    t.integer  "telefone"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "locadoras", ["endereco_id"], name: "index_locadoras_on_endereco_id"

  create_table "opcionais", force: true do |t|
    t.string   "descricao"
    t.string   "nome"
    t.float    "valor"
    t.integer  "veiculo_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "veiculos", force: true do |t|
    t.string   "placa"
    t.string   "marca"
    t.integer  "ano"
    t.string   "modelo"
    t.string   "cor"
    t.boolean  "alugado"
    t.float    "valor_diaria"
    t.integer  "garagem_id"
    t.integer  "locadora_id"
    t.integer  "categoria_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "veiculos", ["categoria_id"], name: "index_veiculos_on_categoria_id"
  add_index "veiculos", ["garagem_id"], name: "index_veiculos_on_garagem_id"
  add_index "veiculos", ["locadora_id"], name: "index_veiculos_on_locadora_id"

end
