class ChangeEmeiToImei < ActiveRecord::Migration
  def self.up
    rename_column :gps_moduls, :emei, :imei
  end

  def self.down
    rename_column :gps_moduls, :imei, :emei
  end
end