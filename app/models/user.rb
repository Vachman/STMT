class User < ActiveRecord::Base
  acts_as_authentic
  
  # У пользователя может быть много закладок
  has_many :favorites
  # У пользователя может быть только один человек (пользователь может быть и удаленным компьютером)
  has_one :person
  
  # Все дела которые должен выполнить пользователь
  has_many :doings, :class_name => "Doing", :foreign_key => "executor_user_id"
  # Все дела которые управляет данный пользователь
  has_many :managed_doings, :class_name => "Doing", :foreign_key => "manager_user_id"
  
end
