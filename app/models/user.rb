class User < ActiveRecord::Base
  acts_as_authentic
  
  has_many :favorites
  
  # Every user is work in organisation
  belongs_to :organisation
end
