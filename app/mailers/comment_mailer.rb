# encoding: utf-8
class CommentMailer < ActionMailer::Base
  default :from => "from@example.com"

  def admin_create_a_comment(comment)

    @comment = comment
    @url  = "http://#{default_url_options[:host]}/support/supmessage/#{@comment.supmessage_id}?system=#{@comment.system_title}"

      mail(:to => "#{@comment.comment_owner}",
           :subject => "Globomax Zrt. | Terméktámogatás oldal | Komment érkezett a hibabejelentéséhez!")

  end

  def user_create_a_comment(comment)

    @comment = comment

    @system_title = @comment.system_title
    @working_system = System.find(:first, :conditions => ['title = ?',@system_title])
    @admins = @working_system.admins

    @url  = "http://#{default_url_options[:host]}/support_messages/datasheet/#{@comment.supmessage_id}"

      mail(:to => @admins.all.map(&:email),
           :subject => "Globomax Zrt. | Terméktámogatás oldal | Komment érkezett a hibabejelentéséhez!")
  end

end
