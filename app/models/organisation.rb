class Organisation < ActiveRecord::Base
  
  # У организации есть много модулей
  has_many :gps_moduls
  
  # В организации есть много сторудников
  has_many :persons
  
  # Организации может иметь много телефонных номеров
  has_many :phones, :as => "phoneholder"   
  
  has_many :doings, :through => :persons
end
