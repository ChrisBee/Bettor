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

ActiveRecord::Schema.define(:version => 20100510153437) do

  create_table "bets", :force => true do |t|
    t.integer  "home_score"
    t.integer  "away_score"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "game_id"
    t.integer  "user_id"
  end

  add_index "bets", ["game_id"], :name => "index_bets_on_game_id"
  add_index "bets", ["user_id"], :name => "index_bets_on_user_id"

  create_table "colmodels", :force => true do |t|
    t.string   "jqgrid_id"
    t.string   "elf"
    t.text     "colmodel"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "game_types", :force => true do |t|
    t.string   "name"
    t.string   "description"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "games", :force => true do |t|
    t.integer  "home_score"
    t.integer  "away_score"
    t.datetime "tingler_time"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "home_team_id"
    t.integer  "away_team_id"
    t.integer  "stadium_id"
    t.integer  "game_type_id"
  end

  add_index "games", ["away_team_id"], :name => "index_games_on_away_team_id"
  add_index "games", ["game_type_id"], :name => "index_games_on_game_type_id"
  add_index "games", ["home_team_id"], :name => "index_games_on_home_team_id"
  add_index "games", ["stadium_id"], :name => "index_games_on_stadium_id"

  create_table "groups", :force => true do |t|
    t.string   "name"
    t.string   "description"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "stadia", :force => true do |t|
    t.string   "name"
    t.string   "description"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "teams", :force => true do |t|
    t.string   "name"
    t.string   "description"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "group_id"
    t.string   "abbreviation"
  end

  add_index "teams", ["group_id"], :name => "index_teams_on_group_id"

  create_table "users", :force => true do |t|
    t.string   "crypted_password",          :limit => 40
    t.string   "salt",                      :limit => 40
    t.string   "remember_token"
    t.datetime "remember_token_expires_at"
    t.string   "name"
    t.string   "email_address"
    t.boolean  "administrator",                           :default => false
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "state",                                   :default => "active"
    t.datetime "key_timestamp"
  end

  add_index "users", ["state"], :name => "index_users_on_state"

end
