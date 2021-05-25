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

ActiveRecord::Schema.define(version: 2014_05_02_201649) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "pontos", id: :serial, force: :cascade do |t|
    t.integer "ano"
    t.integer "mes"
    t.string "entrada_manha", limit: 5, default: "09:00"
    t.string "saida_manha", limit: 5, default: "12:00"
    t.string "entrada_tarde", limit: 5, default: "13:00"
    t.string "saida_tarde", limit: 5, default: "18:00"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
