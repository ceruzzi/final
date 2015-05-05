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

ActiveRecord::Schema.define(version: 0) do

  create_table "posts", force: :cascade do |t|
    t.integer "thread"
    t.string  "user"
    t.integer "post_number"
    t.text    "content"
  end

  create_table "subforums", force: :cascade do |t|
    t.string "topic"
  end

  create_table "threads", force: :cascade do |t|
    t.string  "title"
    t.string  "subforum"
    t.integer "thread_id"
    t.text    "content"
  end

  add_index "threads", ["thread_id"], name: "index_threads_on_thread_id"

  create_table "users", force: :cascade do |t|
    t.string  "username"
    t.integer "age"
    t.string  "avatar_url"
  end

end
