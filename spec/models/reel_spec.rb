require 'spec_helper'

describe Reel do
  it { should validate_presence_of :name }
  it { should belong_to :dvd }
end
