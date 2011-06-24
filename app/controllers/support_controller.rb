class SupportController < ApplicationController

  before_filter :authenticate_user!
  layout "support"

  def index
  end

end
