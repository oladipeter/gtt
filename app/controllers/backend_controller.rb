class BackendController < ApplicationController

  before_filter :authenticate_admin!
  layout "backend"

  def index
  end

end
