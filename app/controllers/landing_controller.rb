class LandingController < ApplicationController
  layout "home_application"
 #skip_before_action :authenticate_user!, only: [:index, :eventos, :adocao, :perdidos]

  def index
  end

end