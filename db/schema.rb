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
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20130710204846) do

  create_table "exercise_categories", :force => true do |t|
    t.string   "name"
    t.text     "description"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  add_index "exercise_categories", ["name"], :name => "index_exercise_categories_on_name", :unique => true

  create_table "exercises", :force => true do |t|
    t.string   "name"
    t.float    "rep_distance",                    :default => 0.0
    t.float    "dfactor_body_up",                 :default => 0.0
    t.float    "dfactor_body_down",               :default => 0.0
    t.float    "dfactor_body_lat",                :default => 0.0
    t.float    "dfactor_body_static_tension_max", :default => 0.0
    t.float    "dfactor_body_static_tension_min", :default => 0.0
    t.float    "wfactor_body_up",                 :default => 0.0
    t.float    "wfactor_body_down",               :default => 0.0
    t.float    "wfactor_body_lat",                :default => 0.0
    t.float    "wfactor_body_static_tension_max", :default => 0.0
    t.float    "wfactor_body_static_tension_min", :default => 0.0
    t.datetime "created_at",                                       :null => false
    t.datetime "updated_at",                                       :null => false
  end

  add_index "exercises", ["name"], :name => "index_exercises_on_name", :unique => true

  create_table "microposts", :force => true do |t|
    t.string   "content"
    t.integer  "user_id"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  add_index "microposts", ["user_id", "created_at"], :name => "index_microposts_on_user_id_and_created_at"

  create_table "relationships", :force => true do |t|
    t.integer  "follower_id"
    t.integer  "followed_id"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  add_index "relationships", ["followed_id"], :name => "index_relationships_on_followed_id"
  add_index "relationships", ["follower_id", "followed_id"], :name => "index_relationships_on_follower_id_and_followed_id", :unique => true
  add_index "relationships", ["follower_id"], :name => "index_relationships_on_follower_id"

  create_table "users", :force => true do |t|
    t.string   "name"
    t.string   "email"
    t.datetime "created_at",                         :null => false
    t.datetime "updated_at",                         :null => false
    t.string   "password_digest"
    t.string   "remember_token"
    t.boolean  "admin",           :default => false
  end

  add_index "users", ["email"], :name => "index_users_on_email", :unique => true
  add_index "users", ["remember_token"], :name => "index_users_on_remember_token"

  create_table "workouts", :force => true do |t|
    t.integer  "user_id"
    t.string   "name"
    t.datetime "date"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  add_index "workouts", ["date"], :name => "index_workouts_on_date"
  add_index "workouts", ["name"], :name => "index_workouts_on_name"

end
