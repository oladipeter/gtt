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
    @url  = "http://localhost:3000/support/supmessage/#{@comment.supmessage_id}?system=#{@comment.system_title}"

      mail(:to => "#{@comment.comment_owner}",
           :subject => "Globomax Kft. | Terméktámogatás oldal | Komment érkezett a hibabejelentéséhez!")

  end

end
