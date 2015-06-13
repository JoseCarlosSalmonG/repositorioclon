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

ActiveRecord::Schema.define(version: 20150613051215) do

  create_table "cities", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "courses", force: true do |t|
    t.string   "name"
    t.string   "price"
    t.integer  "stock"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "picture_file_name"
    t.string   "picture_content_type"
    t.integer  "picture_file_size"
    t.datetime "picture_updated_at"
  end

  create_table "entrees", force: true do |t|
    t.string   "name"
    t.string   "price"
    t.integer  "stock"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "picture_file_name"
    t.string   "picture_content_type"
    t.integer  "picture_file_size"
    t.datetime "picture_updated_at"
  end

  create_table "locals", force: true do |t|
    t.string   "name"
    t.float    "latitude",   limit: 24
    t.float    "longitude",  limit: 24
    t.string   "address"
    t.integer  "city_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "locals", ["city_id"], name: "index_locals_on_city_id", using: :btree

  create_table "payments", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "reservationdetails", force: true do |t|
    t.integer  "quantityentree"
    t.integer  "quantitycourse"
    t.integer  "reservation_id"
    t.integer  "entree_id"
    t.integer  "course_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "reservationdetails", ["course_id"], name: "index_reservationdetails_on_course_id", using: :btree
  add_index "reservationdetails", ["entree_id"], name: "index_reservationdetails_on_entree_id", using: :btree
  add_index "reservationdetails", ["reservation_id"], name: "index_reservationdetails_on_reservation_id", using: :btree

  create_table "reservations", force: true do |t|
    t.date     "date"
    t.string   "address"
    t.integer  "local_id"
    t.integer  "payment_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "reservations", ["local_id"], name: "index_reservations_on_local_id", using: :btree
  add_index "reservations", ["payment_id"], name: "index_reservations_on_payment_id", using: :btree

end