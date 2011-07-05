# encoding: utf-8
class AdminSupportMessagesController < ApplicationController

  layout 'error_messages'

  def index
    @all_user_messages = Supmessage.find(:all)
  end

  def datasheet
    @supmessage = Supmessage.new
    @contact = Contact.new
    @comment = Comment.new
    @message = Supmessage.find(params[:id])
    @supmessage = Supmessage.find(params[:id])
    @comments = @supmessage.comments
    @all_comments = @comments.size
  end

  def datasheet_update
    @supmessage = Supmessage.find(params[:id])
      if @supmessage.update_attributes(params[:supmessage])
        redirect_to support_messages_datasheet_path(@supmessage), :notice => 'A hibabejelentés státuszát sikeresen módosítottad!'
      end

  end

end
