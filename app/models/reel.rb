class Reel < ActiveRecord::Base
  validates :name, :presence => true
  belongs_to :dvd
  acts_as_list
end
