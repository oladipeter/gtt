class FrontendController < ApplicationController

  before_filter :authenticate_user!
  layout "frontend"

  def index
    # User's contact

    @user_contact = Contact.find_by_id(current_user.contact_id)

  end

end
