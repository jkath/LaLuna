# This file is auto-generated from the current state of the database. Instead of editing this file, 
# please use the migrations feature of Active Record to incrementally modify your database, and
# then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your database schema. If you need
# to create the application database on another system, you should be using db:schema:load, not running
# all the migrations from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20100224032343) do

  create_table "item_photos", :force => true do |t|
    t.integer  "item_id"
    t.boolean  "is_primary"
    t.string   "photo_file_name"
    t.string   "photo_file_content"
    t.integer  "photo_file_size"
    t.string   "caption"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.boolean  "show_in_slideshow",  :default => true
  end

  create_table "items", :force => true do |t|
    t.string   "title"
    t.text     "description"
    t.string   "price"
    t.boolean  "is_active"
    t.boolean  "show_in_slideshow"
    t.boolean  "is_sold"
    t.boolean  "is_forsale"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "mypictures", :force => true do |t|
    t.string   "caption"
    t.string   "photo_file_name"
    t.string   "photo_content_type"
    t.integer  "photo_file_size"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "site_contents", :force => true do |t|
    t.string   "text_key"
    t.text     "description"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", :force => true do |t|
    t.string   "login",                     :limit => 40
    t.string   "name",                      :limit => 100, :default => ""
    t.string   "email",                     :limit => 100
    t.string   "crypted_password",          :limit => 40
    t.string   "salt",                      :limit => 40
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "remember_token",            :limit => 40
    t.datetime "remember_token_expires_at"
    t.boolean  "is_admin",                                 :default => false
  end

  add_index "users", ["login"], :name => "index_users_on_login", :unique => true

end
