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

ActiveRecord::Schema.define(version: 20140517173249) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "critters", force: true do |t|
    t.string   "token"
    t.string   "data_hash"
    t.text     "data"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "critterding_version"
    t.string   "environment_hash"
  end

  add_index "critters", ["data_hash"], name: "index_critters_on_data_hash", unique: true, using: :btree
  add_index "critters", ["token"], name: "index_critters_on_token", unique: true, using: :btree

end
