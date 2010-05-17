class HoboMigration5 < ActiveRecord::Migration
  def self.up
    create_table :group_ranks do |t|
      t.integer  :position
      t.datetime :created_at
      t.datetime :updated_at
      t.integer  :group_id
      t.integer  :next_group_id
      t.integer  :team_id
    end
    add_index :group_ranks, [:group_id]
    add_index :group_ranks, [:next_group_id]
    add_index :group_ranks, [:team_id]

    add_column :games, :home_game_role, :string
    add_column :games, :away_game_role, :string
    add_column :games, :home_group_rank_id, :integer
    add_column :games, :away_group_rank_id, :integer
    add_column :games, :home_game_id, :integer
    add_column :games, :away_game_id, :integer

    add_index :games, [:home_group_rank_id]
    add_index :games, [:away_group_rank_id]
    add_index :games, [:home_game_id]
    add_index :games, [:away_game_id]
  end

  def self.down
    remove_column :games, :home_game_role
    remove_column :games, :away_game_role
    remove_column :games, :home_group_rank_id
    remove_column :games, :away_group_rank_id
    remove_column :games, :home_game_id
    remove_column :games, :away_game_id

    drop_table :group_ranks

    remove_index :games, :name => :index_games_on_home_group_rank_id rescue ActiveRecord::StatementInvalid
    remove_index :games, :name => :index_games_on_away_group_rank_id rescue ActiveRecord::StatementInvalid
    remove_index :games, :name => :index_games_on_home_game_id rescue ActiveRecord::StatementInvalid
    remove_index :games, :name => :index_games_on_away_game_id rescue ActiveRecord::StatementInvalid
  end
end
