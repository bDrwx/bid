class CreatePhotos < ActiveRecord::Migration
  def self.up
    create_table :photos do |t|
      t.string :desc
      t.integer :bid_id, :null => false

      t.timestamps
    end
  end

  def self.down
    drop_table :photos
  end
end
