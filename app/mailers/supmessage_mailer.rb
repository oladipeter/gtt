# encoding: utf-8
class SupmessageMailer < ActionMailer::Base
  default :from => "from@example.com"

  def user_create_a_supmessage(supmessage)

    @supmessage = supmessage
    @url  = "http://localhost:3000/support_messages/datasheet/#{@supmessage.id}"

    @supmessage_admins = @supmessage.admins
      mail(:to => @supmessage_admins.all.map(&:email),
           :subject => "Globomax Kft. | Terméktámogatás oldal | #{@supmessage.system_title} hibabejelentés érkezett!")

  end

end
