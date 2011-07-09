class ChangeCarTable < ActiveRecord::Migration
  def self.up
    add_column :cars, :oraginsation_id, :integer
  end

  def self.down
    remove_column :cars, :oraginsation_id
  end
end