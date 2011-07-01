class AdminSupportMessagesController < ApplicationController

  layout 'error_messages'

  def index
    @all_user_messages = Supmessage.find(:all)
  end

  def datasheet
    @contact = Contact.new
    @message = Supmessage.find(params[:id])
  end

end
