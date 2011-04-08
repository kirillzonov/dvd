class AddPositionToReels < ActiveRecord::Migration
  def self.up
    add_column :reels, :position, :integer
  end

  def self.down
    remove_column :reels, :position
  end
end
