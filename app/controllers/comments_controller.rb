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
         redirect_to support_messages_datasheet_path(supmessage_id), :notice => 'A komment sikeresen létrejött'
      else
        render :action => "new"
      end
  end

  def modify
  end

  def delete
  end

end
