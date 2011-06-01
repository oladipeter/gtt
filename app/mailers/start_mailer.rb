class StartMailer < ActionMailer::Base
  default :from => "notifications@example.com"

  def welcome_email(admin_mail)
    #@url  = "http://example.com/login"
    mail(:to => admin_mail,
         :subject => "Registration on GSS website")
  end
end
