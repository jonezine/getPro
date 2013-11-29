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

ActiveRecord::Schema.define(version: 20131128205419) do

  create_table "companies", force: true do |t|
    t.string   "name"
    t.string   "description"
    t.string   "year_founded"
    t.string   "location"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "image"
    t.string   "news_id"
  end

  create_table "employments", force: true do |t|
    t.string   "employment"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "languages", force: true do |t|
    t.string   "language"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "news", force: true do |t|
    t.string   "title"
    t.string   "image"
    t.string   "content"
    t.string   "rails"
    t.string   "g"
    t.string   "scaffold"
    t.string   "News"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "projects", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "skills", force: true do |t|
    t.string   "skill"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", force: true do |t|
    t.string   "name"
    t.string   "email"
    t.string   "summary"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "image"
    t.string   "news_id"
  end

end
