class Client < ActiveRecord::Base
  self.abstract_class = true
  establish_connection :stmt 
  
  set_inheritance_column :ruby_type

   # getter for the "type" column
   def device_type
    self[:type]
   end

   # setter for the "type" column
   def device_type=(s)
    self[:type] = s
   end
   
   def sync
      puts self.name unless Organisation.find_by_ora_id(self.id)
      Organisation.create(:name => self.name, :ora_id => self.id.to_i, :login => self.schema_adm) unless Organisation.find_by_ora_id(self.id) 
   end
   
   

   

end