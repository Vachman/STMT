class Doing < ActiveRecord::Base
  
  # Кто создал заявку
  belongs_to :creator, :class_name => "Person", :foreign_key => "creator_id"
  
  #Множественные задачи пока не реализованны
  #belongs_to :parent, :class_name => "Doing"
  #has_many :childs, :class_name => "Doing", :foreign_key => "parent_id"
  
  #Можно добавить в заметки
  has_many :favorites, :as => :favoritable
 
  # Инициатор заявки (тот кому это надо)
  belongs_to :from, :class_name => "Person", :foreign_key => "from_person_id"
  # Управляющий заявкой (если заявка поручить)
  belongs_to :manager, :class_name => "Person", :foreign_key => "manager_person_id"
  # Испольнитель заявки (тот кто создал по умолчанию, или тот кому передали или поручили заявку)
  belongs_to :executor, :class_name => "Person", :foreign_key => "executor_person_id"

  # Поле создателя заявки обязательно
  validates_presence_of :creator_id, :message => "can't be without creator"
  # Поле инициатора обьязательно (иначе кому нужна эта заявка)
  validates_presence_of :from, :message => "can't be blank"
  # Поле исполнителя обьязательна (в системе не может существовать ничьих заявок, за которых не кто не ответсвенен)
  validates_presence_of :executor, :message => "can't be blank"
  
  
end
