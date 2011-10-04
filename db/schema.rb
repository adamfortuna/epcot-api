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

ActiveRecord::Schema.define(:version => 20110929205928) do

  create_table "dish_checks", :force => true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "user_id",    :null => false
    t.integer  "dish_id",    :null => false
  end

  add_index "dish_checks", ["dish_id"], :name => "index_dish_checks_on_dish_id"
  add_index "dish_checks", ["user_id", "dish_id"], :name => "index_dish_checks_on_user_id_and_dish_id", :unique => true
  add_index "dish_checks", ["user_id"], :name => "index_dish_checks_on_user_id"

  create_table "dishes", :force => true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "slug",              :limit => 200,                                              :null => false
    t.integer  "restaurant_id",                                                                 :null => false
    t.string   "category",          :limit => 40,                                               :null => false
    t.string   "short_name",        :limit => 200,                                              :null => false
    t.string   "name",              :limit => 200,                                              :null => false
    t.text     "description"
    t.boolean  "vegetarian"
    t.boolean  "vegan"
    t.boolean  "gluten_free"
    t.decimal  "price",                            :precision => 8, :scale => 2
    t.integer  "reviews_count",                                                  :default => 0
    t.decimal  "rating",                           :precision => 4, :scale => 2
    t.integer  "ratings_count",                                                  :default => 0
    t.text     "notes"
    t.integer  "dish_checks_count",                                              :default => 0
  end

  add_index "dishes", ["category"], :name => "index_dishes_on_category"
  add_index "dishes", ["slug"], :name => "index_dishes_on_slug", :unique => true

  create_table "restaurants", :force => true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "slug",         :limit => 200,                :null => false
    t.string   "name",         :limit => 200,                :null => false
    t.integer  "rating"
    t.integer  "booth_order"
    t.integer  "year_opened"
    t.integer  "dishes_count",                :default => 0, :null => false
  end

  add_index "restaurants", ["slug"], :name => "index_restaurants_on_slug", :unique => true

  create_table "reviews", :force => true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "reviewable_type", :limit => 20, :null => false
    t.integer  "reviewable_id",                 :null => false
    t.integer  "user_id",                       :null => false
    t.integer  "rating"
    t.string   "title"
    t.text     "review"
  end

  add_index "reviews", ["reviewable_id", "reviewable_type"], :name => "index_reviews_on_reviewable_id_and_reviewable_type", :unique => true
  add_index "reviews", ["user_id"], :name => "index_reviews_on_user_id"

  create_table "slugs", :force => true do |t|
    t.string   "name"
    t.integer  "sluggable_id"
    t.integer  "sequence",                     :default => 1, :null => false
    t.string   "sluggable_type", :limit => 40
    t.string   "scope"
    t.datetime "created_at"
  end

  add_index "slugs", ["name", "sluggable_type", "sequence", "scope"], :name => "index_slugs_on_n_s_s_and_s", :unique => true
  add_index "slugs", ["sluggable_id"], :name => "index_slugs_on_sluggable_id"

  create_table "users", :force => true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "slug",                   :limit => 200,                 :null => false
    t.string   "username",                                              :null => false
    t.string   "email",                                 :default => "", :null => false
    t.string   "encrypted_password",     :limit => 128, :default => "", :null => false
    t.string   "url"
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",                         :default => 0
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.string   "authentication_token"
    t.integer  "reviews_count",                         :default => 0,  :null => false
    t.integer  "dish_checks_count",                     :default => 0
  end

  add_index "users", ["authentication_token"], :name => "index_users_on_authentication_token", :unique => true
  add_index "users", ["email"], :name => "index_users_on_email", :unique => true
  add_index "users", ["reset_password_token"], :name => "index_users_on_reset_password_token", :unique => true
  add_index "users", ["slug"], :name => "index_users_on_slug", :unique => true
  add_index "users", ["username"], :name => "index_users_on_username", :unique => true

end
