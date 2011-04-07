require 'spec_helper'

describe Dvd do
  it { should belong_to :user }
#  it { should have_many :reels }

  it { should validate_presence_of :name }
  it { should validate_presence_of :user }
end
