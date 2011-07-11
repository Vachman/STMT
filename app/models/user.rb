class User < ActiveRecord::Base
  acts_as_authentic
  has_many :favorites
  has_one :person
end
