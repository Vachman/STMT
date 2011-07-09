class SimCard < ActiveRecord::Base
  self.abstract_class = true
  establish_connection :stmt 
  
  set_inheritance_column :ruby_type

   # getter for the "type" column
   def sim_card_type
    self[:type]
   end

   # setter for the "type" column
   def sim_card_type=(s)
    self[:type] = s
   end
   
 has_one :device, :class_name => "Device", :foreign_key => "sim_id"
end