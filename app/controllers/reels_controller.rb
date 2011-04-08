class ReelsController < ApplicationController
  before_filter :authenticate_user!
  
  inherit_resources
  actions :all, :except => [:index, :show]
  belongs_to :dvd

  protected

  def parent_url
    dvds_path
  end
end
