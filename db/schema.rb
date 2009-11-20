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

ActiveRecord::Schema.define(:version => 20091118132738) do

  create_table "applications", :force => true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "jobs_count", :default => 0
  end

  create_table "jobs", :force => true do |t|
    t.integer  "application_id"
    t.datetime "started_at"
    t.datetime "ended_at"
    t.datetime "failed_at"
    t.integer  "attempts",       :default => 0
    t.integer  "priority"
    t.string   "handler"
    t.integer  "remote_id"
    t.text     "last_error"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
