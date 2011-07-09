class AddLoginToOrganisations < ActiveRecord::Migration
  def self.up
    add_column :organisations, :login, :string
  end

  def self.down
    remove_column :organisations, :login
    
  end
end