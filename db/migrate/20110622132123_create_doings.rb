class CreateDoings < ActiveRecord::Migration
  def self.up
    create_table :doings do |t|
      t.string :status
      t.string :description
      t.references :creator
      t.integer :parent

      t.timestamps
    end
  end

  def self.down
    drop_table :doings
  end
end
