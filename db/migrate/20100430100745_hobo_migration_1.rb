class HoboMigration1 < ActiveRecord::Migration
  def self.up
    create_table :bets do |t|
      t.integer  :home_score
      t.integer  :away_score
      t.datetime :created_at
      t.datetime :updated_at
      t.integer  :game_id
      t.integer  :user_id
    end
    add_index :bets, [:game_id]
    add_index :bets, [:user_id]

    create_table :games do |t|
      t.integer  :home_score
      t.integer  :away_score
      t.datetime :tingler_time
      t.datetime :created_at
      t.datetime :updated_at
      t.integer  :home_team_id
      t.integer  :away_team_id
      t.integer  :stadium_id
      t.integer  :game_type_id
    end
    add_index :games, [:home_team_id]
    add_index :games, [:away_team_id]
    add_index :games, [:stadium_id]
    add_index :games, [:game_type_id]

    create_table :teams do |t|
      t.string   :name
      t.string   :description
      t.datetime :created_at
      t.datetime :updated_at
      t.integer  :group_id
    end
    add_index :teams, [:group_id]

    create_table :groups do |t|
      t.string   :name
      t.string   :description
      t.datetime :created_at
      t.datetime :updated_at
    end

    create_table :stadia do |t|
      t.string   :name
      t.string   :description
      t.datetime :created_at
      t.datetime :updated_at
    end

    create_table :game_types do |t|
      t.string   :name
      t.string   :description
      t.datetime :created_at
      t.datetime :updated_at
    end

    create_table :users do |t|
      t.string   :crypted_password, :limit => 40
      t.string   :salt, :limit => 40
      t.string   :remember_token
      t.datetime :remember_token_expires_at
      t.string   :name
      t.string   :email_address
      t.boolean  :administrator, :default => false
      t.datetime :created_at
      t.datetime :updated_at
      t.string   :state, :default => "active"
      t.datetime :key_timestamp
    end
    add_index :users, [:state]
  end

  def self.down
    drop_table :bets
    drop_table :games
    drop_table :teams
    drop_table :groups
    drop_table :stadia
    drop_table :game_types
    drop_table :users
  end
end
