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

ActiveRecord::Schema.define(version: 20150619093706) do

  create_table "categories", force: true do |t|
    t.string   "nome"
    t.string   "area_cientifica"
    t.integer  "anocurricular"
    t.integer  "semestre"
    t.integer  "creditos"
    t.integer  "codigouc"
    t.string   "tipo"
    t.integer  "teorica"
    t.integer  "teorica_pratica"
    t.integer  "pratica_laboratoriais"
    t.integer  "trabalho_campo"
    t.integer  "seminarios"
    t.integer  "estagio"
    t.integer  "orientacao_tutorial"
    t.integer  "outras"
    t.integer  "estudo"
    t.integer  "trabalho_grupo"
    t.integer  "trabalho_projecto"
    t.integer  "horas_avaliacao"
    t.integer  "cursos_id"
    t.datetime "created_at",            null: false
    t.datetime "updated_at",            null: false
  end

  create_table "comments", force: true do |t|
    t.text     "comment"
    t.integer  "job_id"
    t.integer  "user_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "comments", ["job_id"], name: "index_comments_on_job_id", using: :btree
  add_index "comments", ["user_id"], name: "index_comments_on_user_id", using: :btree

  create_table "cursos", force: true do |t|
    t.string   "nome"
    t.string   "codigocurso"
    t.string   "instituicao"
    t.integer  "codigolocal"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "jobs", force: true do |t|
    t.text     "docente"
    t.text     "email"
    t.text     "objectivos"
    t.text     "conteudo"
    t.text     "demostracao"
    t.text     "metodologia"
    t.text     "bibliografia"
    t.text     "objectivos_ing"
    t.text     "conteudos_ing"
    t.text     "demostracao_ing"
    t.text     "metodologia_ing"
    t.text     "bibliografia_ing"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "category_id"
    t.string   "image_file_name"
    t.string   "image_content_type"
    t.integer  "image_file_size"
    t.datetime "image_updated_at"
    t.integer  "user_id"
    t.integer  "cursos_id"
    t.integer  "polos_id"
    t.string   "situacao"
  end

  create_table "polos", force: true do |t|
    t.string   "nome"
    t.string   "local"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", force: true do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.boolean  "admin"
    t.boolean  "gestor"
    t.integer  "gestorlocal"
    t.boolean  "gestorCSH"
    t.boolean  "gestorM"
    t.boolean  "gestorMQ"
    t.boolean  "gestorEG"
    t.boolean  "gestorCM"
    t.boolean  "gestorCD"
    t.string   "primeiroNome"
    t.string   "segundoNome"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree

end
