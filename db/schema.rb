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

ActiveRecord::Schema.define(version: 20150914151541) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"
  enable_extension "hstore"

  create_table "bills", force: :cascade do |t|
    t.datetime "created_at",                    null: false
    t.datetime "updated_at",                    null: false
    t.string   "session",          default: ""
    t.string   "title",            default: ""
    t.text     "shortDescription", default: ""
    t.string   "billName",         default: ""
    t.string   "originChamber",    default: ""
    t.string   "currentChamber",   default: ""
    t.string   "bill_type",        default: ""
    t.hstore   "authors",          default: [],              array: true
    t.hstore   "coauthors",        default: [],              array: true
    t.hstore   "sponsors",         default: [],              array: true
    t.hstore   "cosponsors",       default: [],              array: true
    t.hstore   "advisors",         default: [],              array: true
    t.string   "link",             default: ""
    t.text     "digest",           default: ""
  end

  create_table "cills", force: :cascade do |t|
    t.datetime "created_at",                    null: false
    t.datetime "updated_at",                    null: false
    t.string   "session",          default: ""
    t.string   "title",            default: ""
    t.text     "shortDescription", default: ""
    t.string   "billName",         default: ""
    t.string   "originChamber",    default: ""
    t.string   "currentChamber",   default: ""
    t.hstore   "authors",          default: [],              array: true
    t.hstore   "coauthors",        default: [],              array: true
    t.hstore   "sponsors",         default: [],              array: true
    t.hstore   "cosponsors",       default: [],              array: true
    t.hstore   "advisors",         default: [],              array: true
    t.string   "link",             default: ""
    t.text     "digest",           default: ""
    t.string   "cill_type",        default: ""
  end

  create_table "follows", force: :cascade do |t|
    t.integer  "followable_id",                   null: false
    t.string   "followable_type",                 null: false
    t.integer  "follower_id",                     null: false
    t.string   "follower_type",                   null: false
    t.boolean  "blocked",         default: false, null: false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "follows", ["followable_id", "followable_type"], name: "fk_followables", using: :btree
  add_index "follows", ["follower_id", "follower_type"], name: "fk_follows", using: :btree

  create_table "issues", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "legislators", force: :cascade do |t|
    t.string   "position_title",    default: ""
    t.string   "firstName",         default: ""
    t.string   "lastName",          default: ""
    t.string   "party",             default: ""
    t.string   "link",              default: ""
    t.string   "fullName",          default: ""
    t.datetime "created_at",                     null: false
    t.datetime "updated_at",                     null: false
    t.string   "chamber",           default: ""
    t.hstore   "bill_authored",     default: [],              array: true
    t.hstore   "bill_co_authored",  default: [],              array: true
    t.hstore   "bill_sponsored",    default: [],              array: true
    t.hstore   "bill_co_sponsored", default: [],              array: true
    t.hstore   "committees",        default: [],              array: true
    t.string   "leg_pic_url",       default: ""
    t.string   "session",           default: ""
  end

  create_table "races", force: :cascade do |t|
    t.string   "title"
    t.integer  "district"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string   "slug"
    t.string   "summary"
    t.text     "body"
  end

  add_index "races", ["slug"], name: "index_races_on_slug", unique: true, using: :btree

  create_table "statements", force: :cascade do |t|
    t.text     "stance"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer  "user_id"
  end

  add_index "statements", ["user_id"], name: "index_statements_on_user_id", using: :btree

  create_table "topics", force: :cascade do |t|
    t.integer  "issue_id"
    t.integer  "statement_id"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  add_index "topics", ["issue_id"], name: "index_topics_on_issue_id", using: :btree
  add_index "topics", ["statement_id"], name: "index_topics_on_statement_id", using: :btree

  create_table "users", force: :cascade do |t|
    t.string   "email",                  default: "",         null: false
    t.string   "encrypted_password",     default: "",         null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,          null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.inet     "current_sign_in_ip"
    t.inet     "last_sign_in_ip"
    t.datetime "created_at",                                  null: false
    t.datetime "updated_at",                                  null: false
    t.string   "role",                   default: "voter"
    t.string   "first_name"
    t.string   "last_name"
    t.text     "bio"
    t.string   "profile_image"
    t.string   "party"
    t.string   "avatar_file_name"
    t.string   "avatar_content_type"
    t.integer  "avatar_file_size"
    t.datetime "avatar_updated_at"
    t.integer  "race_id"
    t.string   "legislator"
    t.string   "family"
    t.string   "education"
    t.string   "elected_office"
    t.string   "status",                 default: "inactive"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree

end
