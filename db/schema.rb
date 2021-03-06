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

ActiveRecord::Schema.define(:version => 20120228120924) do

  create_table "aboutus", :force => true do |t|
    t.string   "title"
    t.text     "content"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "admins", :force => true do |t|
    t.string   "email",                             :default => "", :null => false
    t.string   "encrypted_password", :limit => 128, :default => "", :null => false
    t.integer  "failed_attempts",                   :default => 0
    t.string   "unlock_token"
    t.datetime "locked_at"
    t.integer  "sign_in_count",                     :default => 0
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "name"
    t.string   "image_file_name"
    t.string   "image_content_type"
    t.integer  "image_file_size"
    t.datetime "image_updated_at"
    t.integer  "system_id"
  end

  create_table "admins_supmessages", :id => false, :force => true do |t|
    t.integer "supmessage_id"
    t.integer "admin_id"
  end

  create_table "admins_systems", :id => false, :force => true do |t|
    t.integer "admin_id"
    t.integer "system_id"
  end

  create_table "advices", :force => true do |t|
    t.string   "title"
    t.text     "short_description"
    t.text     "content"
    t.integer  "system_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "articles", :force => true do |t|
    t.string   "title"
    t.text     "short_description"
    t.text     "content"
    t.integer  "system_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "position"
    t.string   "image_file_name"
    t.string   "image_content_type"
    t.integer  "image_file_size"
    t.datetime "image_updated_at"
    t.string   "outter_link"
    t.datetime "start_date"
    t.datetime "end_date"
  end

  create_table "ckeditor_assets", :force => true do |t|
    t.string   "data_file_name",                                 :null => false
    t.string   "data_content_type"
    t.integer  "data_file_size"
    t.integer  "assetable_id"
    t.string   "assetable_type",    :limit => 30
    t.string   "type",              :limit => 25
    t.string   "guid",              :limit => 10
    t.integer  "locale",            :limit => 2,  :default => 0
    t.integer  "user_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "ckeditor_assets", ["assetable_type", "assetable_id"], :name => "fk_assetable"
  add_index "ckeditor_assets", ["assetable_type", "type", "assetable_id"], :name => "idx_assetable_type"
  add_index "ckeditor_assets", ["user_id"], :name => "fk_user"

  create_table "comments", :force => true do |t|
    t.string   "user"
    t.text     "content"
    t.integer  "supmessage_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "email"
    t.string   "comment_owner"
    t.string   "system_title"
  end

  create_table "commercials", :force => true do |t|
    t.string   "title"
    t.text     "content"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "position"
  end

  create_table "contacts", :force => true do |t|
    t.string   "name"
    t.string   "email"
    t.string   "mobil"
    t.string   "phone"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "image_file_name"
    t.string   "image_content_type"
    t.integer  "image_file_size"
    t.datetime "image_updated_at"
    t.text     "classification"
    t.text     "description"
    t.integer  "position"
  end

  create_table "contactus", :force => true do |t|
    t.string   "title"
    t.text     "content"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "faqs", :force => true do |t|
    t.string   "title"
    t.text     "description"
    t.integer  "system_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "offers", :force => true do |t|
    t.string   "title"
    t.text     "content"
    t.string   "user"
    t.string   "government"
    t.string   "email"
    t.string   "phone"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "questions", :force => true do |t|
    t.boolean  "internet_gui",          :default => false
    t.boolean  "settlement_marketing",  :default => false
    t.boolean  "press_conference",      :default => false
    t.boolean  "culture_and_sport",     :default => false
    t.boolean  "settlement_conference", :default => false
    t.boolean  "corporate_session",     :default => false
    t.boolean  "electioneering",        :default => false
    t.boolean  "local_tv",              :default => false
    t.boolean  "smart_tv",              :default => false
    t.boolean  "good_solution",         :default => false
    t.integer  "how_much"
    t.string   "name"
    t.string   "email"
    t.string   "address"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "references", :force => true do |t|
    t.string   "title"
    t.text     "content"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "supmessages", :force => true do |t|
    t.string   "title"
    t.text     "description"
    t.string   "system_title"
    t.integer  "user_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "status"
  end

  create_table "systems", :force => true do |t|
    t.string   "name"
    t.text     "description"
    t.string   "title"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "full_name"
    t.text     "long_description"
    t.integer  "position"
    t.string   "url"
  end

  create_table "systems_users", :id => false, :force => true do |t|
    t.integer "system_id"
    t.integer "user_id"
  end

  create_table "users", :force => true do |t|
    t.string   "email",                                 :default => "",    :null => false
    t.string   "encrypted_password",     :limit => 128, :default => "",    :null => false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.string   "confirmation_token"
    t.datetime "confirmed_at"
    t.datetime "confirmation_sent_at"
    t.integer  "sign_in_count",                         :default => 0
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "full_name"
    t.string   "nick_name"
    t.string   "local_government"
    t.string   "phone_number"
    t.boolean  "mikrovoks"
    t.boolean  "mikrokam"
    t.boolean  "sequence"
    t.boolean  "edtr"
    t.boolean  "mvmonitor"
    t.boolean  "digirat"
    t.boolean  "mikrovoks_flat_rate",                   :default => false
    t.boolean  "mikrokam_flat_rate",                    :default => false
    t.boolean  "sequence_flat_rate",                    :default => false
    t.boolean  "edtr_flat_rate",                        :default => false
    t.boolean  "digirat_flat_rate",                     :default => false
    t.integer  "contact_id"
  end

  add_index "users", ["confirmation_token"], :name => "index_users_on_confirmation_token", :unique => true
  add_index "users", ["email"], :name => "index_users_on_email", :unique => true
  add_index "users", ["reset_password_token"], :name => "index_users_on_reset_password_token", :unique => true

end
