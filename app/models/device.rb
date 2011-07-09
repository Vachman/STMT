class Device < ActiveRecord::Base
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
   
   belongs_to :sim_card, :class_name => "SimCard", :foreign_key => "sim_id"
   belongs_to :client, :class_name => "Client", :foreign_key => "cln_id"
   
   def sync
     unless GpsModul.find_by_imei(self.imei) 
        org =  !self.client.nil? ? Organisation.find_by_ora_id(self.client.id) : Organisation.find_by_name('*')
        phone = !self.sim_card.nil? ? self.sim_card.phone : ""
        GpsModul.create(:imei => self.imei, :phone => phone , :organisation => org)
        p "Modul with IMEI: #{self.imei} added."
     else
       p "Modul with IMEI: #{self.imei} allready in system."
     end
      
   end

   
end
