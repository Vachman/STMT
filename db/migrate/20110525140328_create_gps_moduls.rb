class CreateGpsModuls < ActiveRecord::Migration
  def self.up
    create_table :gps_moduls do |t|
      t.string :emei
      t.string :phone
      t.string :car
      t.references :organisation

      t.timestamps
    end
  end

  def self.down
    drop_table :gps_moduls
  end
end
