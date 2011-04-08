class Dvd < ActiveRecord::Base
  validates :name, :user, :presence => true
  
  belongs_to :user
  has_many :reels, :dependent => :delete_all

  def to_s
    name
  end
end
