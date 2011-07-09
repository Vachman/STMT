class Organisation < ActiveRecord::Base
  has_many :gps_moduls
  has_many :employees, :class_name => "User"
end
