class HoboMigration4 < ActiveRecord::Migration
  def self.up
    add_column :games, :short_desc, :string
    add_column :games, :home_points, :integer
    add_column :games, :away_points, :integer
  end

  def self.down
    remove_column :games, :short_desc
    remove_column :games, :home_points
    remove_column :games, :away_points
  end
end
