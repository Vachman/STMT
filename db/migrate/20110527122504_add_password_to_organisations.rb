class AddPasswordToOrganisations < ActiveRecord::Migration
  def self.up
    add_column :organisations, :password, :string
  end

  def self.down
    remove_column :organisations, :password
  end
end