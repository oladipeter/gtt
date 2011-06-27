class BackendController < ApplicationController

  before_filter :authenticate_admin!
  layout "backend"

  def index
    # Hibabejelentesek

    @support_messages = Supmessage.find(:all)
    @support_messages_number = Supmessage.find(:all).size

  end

end
