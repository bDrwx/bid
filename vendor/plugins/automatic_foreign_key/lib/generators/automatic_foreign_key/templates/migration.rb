class <%= migration_class_name %> < ActiveRecord::Migration
  def self.up
<% foreign_keys.each do |foreign_key| -%>
    <%= foreign_key.to_dump %>
<% end -%>
  end

  def self.down
    raise ActiveRecord::IrreversibleMigration
  end
end
