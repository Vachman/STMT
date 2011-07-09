 class OraObject < ActiveRecord::Base
  self.abstract_class = true
  set_table_name 'objects'
 
  dbconfig = YAML::load(File.open('config/database.yml')) #Берем конфигурацию к ораклу
  dbconfig["stmt"]["username"] = "mkad_vostok_adm"
  dbconfig["stmt"]["password"] = "KuGV5r"
  establish_connection dbconfig["stmt"]
  
  belongs_to :device, :class_name => "Device", :foreign_key => "dev_id"
   
  set_inheritance_column :ruby_type

   # getter for the "type" column
   def ora_object_type
    self[:type]
   end

   # setter for the "type" column
   def ora_object_type=(s)
    self[:type] = s
   end
   
 end