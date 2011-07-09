class AddOrganisationToUsers < ActiveRecord::Migration
  def self.up
    add_column :users, :organisation_id, :integer
  end

  def self.down
    remove_column :users, :organisation_id
  end
end