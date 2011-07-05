# encoding: utf-8
class AdminSupportMessagesController < ApplicationController

  layout 'error_messages'

  def index
    @all_user_messages = Supmessage.find(:all)
  end

  def datasheet
    @contact = Contact.new
    @message = Supmessage.find(params[:id])
    @supmessage = Supmessage.find(params[:id])
  end

  def datasheet_update
    @supmessage = Supmessage.find(params[:id])
      if @supmessage.update_attributes(params[:supmessage])
        redirect_to support_messages_datasheet_path(@supmessage), :notice => 'A hibabejelentés adatlapját sikeresen módosítottad!'
      end

  end

end
