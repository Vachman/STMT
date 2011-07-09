class ChangeDoings < ActiveRecord::Migration
  def self.up
    rename_column :doings, :parent, :parent_id
  end

  def self.down
    rename_column :doings, :parent_id, :parent
  end
end