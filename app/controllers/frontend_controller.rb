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

    # System lists

    @support_systems = System.find(:all, :include => :users, :conditions => { "systems_users.user_id" => current_user.id})

    @mikrovoks_support = "0"
    @mikrokam_support = "0"
    @sequence_support = "0"
    @edtr_support = "0"
    @mvmonitor_support = "0"
    @digirat_support = "0"

    for system in @support_systems do

      case system.title
        when "mikrovoks"
          @mikrovoks_support = "1"

        when "mikrokam"
          @mikrokam_support = "1"

        when "sequence"
          @sequence_support = "1"

        when "edtr"
          @edtr_support = "1"

        when "mvmonitor"
          @mvmonitor_support = "1"

        when "digirat"
          @digirat_support = "1"
      end
    end

  end

end
