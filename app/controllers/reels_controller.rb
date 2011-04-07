class ReelsController < ApplicationController
  before_filter :authenticate_user!
  
  inherit_resources
  actions :all, :except => [:show]
  belongs_to :dvd

  protected

  def collection
    @reels ||= end_of_association_chain.page(params[:page])
  end
end
