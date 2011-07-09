class Doing < ActiveRecord::Base
  belongs_to :creator, :class_name => "User", :foreign_key => "creator_id"
  belongs_to :parent, :class_name => "Doing"
  has_many :childs, :class_name => "Doing", :foreign_key => "parent_id"
  has_many :favorites, :as => :favoritable
  validates_presence_of :creator_id, :message => "can't be without creator"
end
