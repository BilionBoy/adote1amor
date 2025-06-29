class ApplicationController < ActionController::Base
  include Pagy::Backend
  before_action :authenticate_user!
  include LayoutByUser

  private
  
  def after_sign_in_path_for(resource)
    stored_location_for(resource) || root_path
  end
end