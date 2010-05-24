class HoboMigration7 < ActiveRecord::Migration
  def self.up
    add_column :bets, :points, :integer
  end

  def self.down
    remove_column :bets, :points
  end
end
