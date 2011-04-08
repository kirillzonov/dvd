class DvdsController < ApplicationController
  before_filter :authenticate_user!
  inherit_resources
  actions :all, :except => [:show]

  protected

  def collection_url
    dvds_path
  end

  def create_resource(object)
    object.user = current_user
    object.save
  end

  def collection
    @dvds ||= end_of_association_chain.page(params[:page])
  end
end
