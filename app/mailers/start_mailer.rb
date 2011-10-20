# encoding: utf-8
class StartMailer < ActionMailer::Base
  default :from => "notifications@example.com"

  def welcome_email(admin_mail)
    mail(:to => admin_mail,
         :subject => "Globomax Zrt. | Terméktámogatás oldal | Felhasználó regisztráció történt!")
  end
end
