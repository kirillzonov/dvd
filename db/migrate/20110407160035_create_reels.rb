class CreateReels < ActiveRecord::Migration
  def self.up
    create_table :reels do |t|
      t.string :name
      t.integer :dvd_id

      t.timestamps
    end

    add_index :reels, :dvd_id
  end

  def self.down
    drop_table :reels
  end
end
