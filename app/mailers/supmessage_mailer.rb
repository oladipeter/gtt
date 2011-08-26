# encoding: utf-8
class SupmessageMailer < ActionMailer::Base
  default :from => "from@example.com"

  def user_create_a_supmessage(supmessage)
    #@url  = "http://example.com/login"
    @supmessage = supmessage
    mail(:to => "oladi.peter@globomax.hu",
         :subject => "Globomax Kft. | Terméktámogatás oldal | Hibabejelentés érkezett!")
  end



end
