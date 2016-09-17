ti# encoding: UTF-8
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

ActiveRecord::Schema.define(version: 20160914232529) do

  create_table "accounts", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "cancions", force: :cascade do |t|
    t.text     "no_cancion"
    t.text     "no_artista_cancion"
    t.datetime "created_at",         null: false
    t.datetime "updated_at",         null: false
  end

  create_table "comentarios", force: :cascade do |t|
    t.integer  "Local_id"
    t.integer  "Sala_id"
    t.integer  "Usuario_id"
    t.text     "tx_comentario"
    t.integer  "qt_estrellas"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

  add_index "comentarios", ["Local_id"], name: "index_comentarios_on_Local_id"
  add_index "comentarios", ["Sala_id"], name: "index_comentarios_on_Sala_id"
  add_index "comentarios", ["Usuario_id"], name: "index_comentarios_on_Usuario_id"

  create_table "eventos", force: :cascade do |t|
    t.text     "no_evento"
    t.integer  "Local_id"
    t.datetime "fe_fecha_evento"
    t.integer  "qt_capacidad"
    t.text     "tx_descripcion_evento"
    t.datetime "created_at",            null: false
    t.datetime "updated_at",            null: false
  end

  add_index "eventos", ["Local_id"], name: "index_eventos_on_Local_id"

  create_table "locals", force: :cascade do |t|
    t.text     "no_local"
    t.text     "tx_direccion"
    t.string   "tx_telefono"
    t.text     "tx_correo"
    t.text     "tx_descripcion"
    t.string   "co_administrador"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
  end

  create_table "productos", force: :cascade do |t|
    t.text     "no_producto"
    t.integer  "TipoProducto_id"
    t.decimal  "ss_precio_producto"
    t.boolean  "fl_disponible"
    t.datetime "created_at",         null: false
    t.datetime "updated_at",         null: false
  end

  add_index "productos", ["TipoProducto_id"], name: "index_productos_on_TipoProducto_id"

  create_table "salas", force: :cascade do |t|
    t.integer  "Local_id"
    t.text     "no_sala"
    t.integer  "qt_capacidad"
    t.text     "tx_sala_descripcion"
    t.datetime "created_at",          null: false
    t.datetime "updated_at",          null: false
  end

  add_index "salas", ["Local_id"], name: "index_salas_on_Local_id"

  create_table "tipo_productos", force: :cascade do |t|
    t.text     "no_tipo_producto"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
  end

  create_table "tipo_usuarios", force: :cascade do |t|
    t.string   "no_tipo_usuario"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

  create_table "usuarios", force: :cascade do |t|
    t.text     "no_usuario"
    t.integer  "TipoUsuario_id"
    t.text     "no_apellido_paterno"
    t.text     "no_apellido_materno"
    t.string   "no_dni"
    t.string   "email"
    t.datetime "created_at",          null: false
    t.datetime "updated_at",          null: false
  end

  add_index "usuarios", ["TipoUsuario_id"], name: "index_usuarios_on_TipoUsuario_id"

end
