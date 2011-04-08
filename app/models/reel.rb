class Reel < ActiveRecord::Base
  validates :name, :presence => true
  belongs_to :dvd
  acts_as_list
  default_scope order('reels.position ASC')
end
