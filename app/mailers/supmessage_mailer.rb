# encoding: utf-8
class SupmessageMailer < ActionMailer::Base
  default :from => "from@example.com"

  def user_create_a_supmessage(supmessage)

    @supmessage = supmessage
    @url  = "http://#{default_url_options[:host]}/support_messages/datasheet/#{@supmessage.id}"

    @system_title = @supmessage.system_title
    @working_system = System.find(:first, :conditions => ['title = ?',@system_title])
    @admins = @working_system.admins

      mail(:to => @admins.all.map(&:email),
           :subject => "Globomax Kft. | Terméktámogatás oldal | #{@supmessage.system_title} hibabejelentés érkezett!")

  end

end
