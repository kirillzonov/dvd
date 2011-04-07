class Dvd < ActiveRecord::Base
  validates :name, :user, :presence => true
  belongs_to :user
end
