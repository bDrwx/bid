class AddUserToBid < ActiveRecord::Migration
  def self.up
    add_column :bids, :user_id, :integet, {:null => false, :default => 1}
  end

  def self.down
    remove_column :bids, :user_id
  end
end
