class Dvd < ActiveRecord::Base
  validates :name, :user, :presence => true
  
  belongs_to :user
  has_many :reels

  def to_s
    name
  end
end
