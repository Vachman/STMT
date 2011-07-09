class ChangeOragnisationColumns < ActiveRecord::Migration
  def self.up
    add_column :organisations, :ora_id, :integer
  end

  def self.down
    remove_column :organisations, :ora_id
  end
end