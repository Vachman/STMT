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
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20110711085319) do

  create_table "cars", :force => true do |t|
    t.string   "reg_number"
    t.string   "modul_imei"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "oraginsation_id"
  end

  create_table "doings", :force => true do |t|
    t.string   "status"
    t.string   "description"
    t.integer  "creator_id"
    t.integer  "parent_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "favorites", :force => true do |t|
    t.integer  "user_id"
    t.integer  "favoritable_id"
    t.string   "favoritable_type"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "gps_moduls", :force => true do |t|
    t.string   "imei"
    t.string   "phone"
    t.string   "car"
    t.integer  "organisation_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "organisations", :force => true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "password"
    t.string   "login"
    t.integer  "ora_id"
  end

  create_table "people", :force => true do |t|
    t.string   "name"
    t.string   "lastname"
    t.integer  "organisation_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "user_id"
  end

  create_table "phones", :force => true do |t|
    t.string   "number"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "phone_holder_id"
    t.string   "phone_holder_type"
  end

  create_table "users", :force => true do |t|
    t.string   "email",                             :null => false
    t.string   "crypted_password",                  :null => false
    t.string   "password_salt",                     :null => false
    t.string   "persistence_token",                 :null => false
    t.integer  "login_count",        :default => 0, :null => false
    t.integer  "failed_login_count", :default => 0, :null => false
    t.datetime "last_request_at"
    t.datetime "current_login_at"
    t.datetime "last_login_at"
    t.string   "current_login_ip"
    t.string   "last_login_ip"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  # unrecognized index "index_users_on_email" with type ActiveRecord::ConnectionAdapters::IndexDefinition
  # unrecognized index "index_users_on_persistence_token" with type ActiveRecord::ConnectionAdapters::IndexDefinition

end
