class Organisation < ActiveRecord::Base
  has_many :gps_moduls
  has_many :employees, :class_name => "Person"
  has_many :phones, :as => "phone_older"   
end
