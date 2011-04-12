class ReelsController < ApplicationController
  before_filter :authenticate_user!
  
  inherit_resources
  actions :all, :except => [:index, :show]
  belongs_to :dvd

  def sort
    params[:reel].each_with_index do |id, index|
      Reel.update_all(['position=?', index+1], ['id=?', id])
      Reel.find(id).update_attribute(:dvd_id, params[:dvd_id])
    end
    render :nothing => true
  end

  protected

  def parent_url
    dvds_path
  end
end
