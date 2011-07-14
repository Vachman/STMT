class Organisation < ActiveRecord::Base
  
  # У организации есть много модулей
  has_many :gps_moduls
  
  # В организации есть много сторудников
  has_many :persons
  
  # Организации может иметь много телефонных номеров
  has_many :phones, :as => "phoneholder"   
  
  # Все задачи связанные с этой организацией
  has_many :self_doings, :class_name => "Doing"
  has_many :person_doings, :through => :persons, :source => :doings
  
  def doings
    mas = self.self_doings
    mas << self.person_doings
  end

end
