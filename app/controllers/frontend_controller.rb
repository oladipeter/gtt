class FrontendController < ApplicationController

  before_filter :authenticate_user!
  layout "frontend"

  def index

    # User's contact
    @user_contact = Contact.find_by_id(current_user.contact_id)

    # Systems

    @mikrovoks_system = System.find_by_name("MikroVoks")
    @mikrokam_system = System.find_by_name("MikroKam")
    @sequence_system = System.find_by_name("seQUEnce")
    @edtr_system = System.find_by_name("EDtR")
    @digirat_system = System.find_by_name("Digirat")
    @mvmonitor_system = System.find_by_name("MvMonitor")

    # Advices

    @advices = Advice.find(:all, :limit => 3)

  end

end
