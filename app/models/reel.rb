class Reel < ActiveRecord::Base
  validates :name, :presence => true
  
  belongs_to :dvd
end
