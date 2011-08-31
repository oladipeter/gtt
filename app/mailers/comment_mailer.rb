# encoding: utf-8
class CommentMailer < ActionMailer::Base
  default :from => "from@example.com"

  def admin_create_a_comment(comment)

    @comment = comment
    @url  = "http://localhost:3000/support/supmessage/#{@comment.supmessage_id}?system=#{@comment.system_title}"

      mail(:to => "#{@comment.comment_owner}",
           :subject => "Globomax Kft. | Terméktámogatás oldal | Komment érkezett a hibabejelentéséhez!")

  end

  def user_create_a_comment(comment)

    @comment = comment

    @system_title = @comment.system_title
    @working_system = System.find(:first, :conditions => ['title = ?',@system_title])
    @admins = @working_system.admins

    @url  = "http://localhost:3000/support_messages/datasheet/#{@comment.supmessage_id}"

      mail(:to => @admins.all.map(&:email),
           :subject => "Globomax Kft. | Terméktámogatás oldal | Komment érkezett a hibabejelentéséhez!")
  end

end
