# encoding: utf-8
class CommentsController < ApplicationController
  def index
    @comments = Comment.find(:all)
  end

  def list
    @comments = Comment.find(:all)
  end
  
  def new
   @comment = Comment.new
  end

  def create
    @comment = Comment.new(params[:comment])
    supmessage_id = @comment.supmessage_id
      if @comment.save
        CommentMailer.admin_create_a_comment(@comment).deliver
         redirect_to support_messages_datasheet_path(supmessage_id), :notice => 'A komment sikeresen létrejött'
      else
        render :action => "new"
      end
  end

  def create_user_comment
    @comment = Comment.new(params[:comment])
    supmessage_id = @comment.supmessage_id
      if @comment.save
         redirect_to show_supmessage_path( @comment.supmessage.id ,:system => @comment.supmessage.system_title ), :notice => 'A komment sikeresen létrejött'
      else
        redirect_to show_supmessage_path( :system => @comment.supmessage.system_title ), :notice => 'Hiba történt a comment felvitelekor, próbáld újra!'
      end
  end

end
