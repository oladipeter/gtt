class SupportController < ApplicationController

  before_filter :authenticate_user!
  layout "support"

  def index

    # system parameter in session

    @system = System.find_by_title(params[:system])
    session[:current_system] = @system

  end

end
