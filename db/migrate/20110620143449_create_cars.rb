class CreateCars < ActiveRecord::Migration
  def self.up
    create_table :cars do |t|
      t.string :reg_number
      t.string :modul_imei

      t.timestamps
    end
  end

  def self.down
    drop_table :cars
  end
end
