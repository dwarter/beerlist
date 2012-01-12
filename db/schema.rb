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

ActiveRecord::Schema.define(:version => 20120112043456) do

  create_table "articles", :force => true do |t|
    t.string   "title"
    t.string   "content"
    t.string   "articlepic_file_name"
    t.integer  "articlepic_file_size"
    t.datetime "articlepic_updated_at"
    t.string   "articlepic_content_type"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "beers", :force => true do |t|
    t.string   "name"
    t.text     "description"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "events", :force => true do |t|
    t.string   "name"
    t.string   "location"
    t.string   "description"
    t.string   "eventpic_file_name"
    t.integer  "eventpic_file_size"
    t.datetime "eventpic_updated_at"
    t.string   "eventpic_content_type"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.date     "date"
  end

  create_table "forums", :force => true do |t|
    t.string   "name"
    t.text     "description"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "messages", :force => true do |t|
    t.string   "title"
    t.text     "content"
    t.integer  "user_id"
    t.string   "ancestry"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "microposts", :force => true do |t|
    t.string    "content"
    t.integer   "user_id"
    t.timestamp "created_at"
    t.timestamp "updated_at"
    t.string    "newbeer"
    t.string    "grade"
  end

  add_index "microposts", ["created_at"], :name => "index_microposts_on_created_at"
  add_index "microposts", ["user_id"], :name => "index_microposts_on_user_id"

  create_table "participations", :force => true do |t|
    t.integer  "event_id"
    t.integer  "user_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "relationships", :force => true do |t|
    t.integer   "follower_id"
    t.integer   "followed_id"
    t.timestamp "created_at"
    t.timestamp "updated_at"
  end

  add_index "relationships", ["followed_id"], :name => "index_relationships_on_followed_id"
  add_index "relationships", ["follower_id", "followed_id"], :name => "index_relationships_on_follower_id_and_followed_id", :unique => true
  add_index "relationships", ["follower_id"], :name => "index_relationships_on_follower_id"

  create_table "users", :force => true do |t|
    t.string    "name"
    t.string    "email"
    t.timestamp "created_at"
    t.timestamp "updated_at"
    t.string    "encrypted_password"
    t.string    "salt"
    t.boolean   "admin",                 :default => false
    t.string    "hometown"
    t.string    "beer"
    t.string    "skill"
    t.string    "gravatar_file_name"
    t.integer   "gravatar_file_size"
    t.timestamp "gravatar_updated_at"
    t.string    "gravatar_content_type"
  end

  add_index "users", ["email"], :name => "index_users_on_email", :unique => true

end
