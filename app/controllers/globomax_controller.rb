class GlobomaxController < ApplicationController

  # public Globomax website controller

  layout "globomax"

  def index
  end

  def contact_us
    @contactus = Contactus.find(1)
  end

end
