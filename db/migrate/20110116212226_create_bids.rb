class CreateBids < ActiveRecord::Migration
  def self.up
    create_table :bids do |t|
      t.string :name
      t.text :desc
      t.integer :price

      t.timestamps
    end
  end

  def self.down
    drop_table :bids
  end
end
