class GpsModul < ActiveRecord::Base
  belongs_to :organisation
  
  has_many :favorites, :as => :favoritable
  
  has_many :doings
  
  validates_numericality_of :imei, :message => "is not a number"
  validates_length_of :imei, :is => 15, :message => "must be present 15 digits"
  
  def phone=(s)
    self[:phone] = "*"
    self[:phone] = s if s.to_i.to_s.length == 11
    self[:phone] = s.gsub('-','').gsub(' ','').gsub('(','').gsub(')','').insert(0,'8') if s =~ /^\(\d{3}\)\s\d{3}-\d{2}-\d{2}$/ 
  end
  

end
