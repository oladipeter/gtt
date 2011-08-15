class GlobomaxController < ApplicationController

  # public Globomax website controller

  layout "globomax"

  def index
  end

  def contact_us
    @contactus = Contactus.find(1)
  end

  def contacts
    @contacts = Contact.find(:all)
    render :layout => "globomax_employees"
  end

  def products
    @products = System.find(:all, :order => "position ASC" )
    render :layout => "globomax_employees"
  end

  def references
    @reference = Reference.find(1)
  end

end
