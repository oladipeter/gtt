# encoding: utf-8
class OfferMailer < ActionMailer::Base
  default :from => "from@example.com"

  def thankyou(offer)
    @offer = offer
    @url  = "http://localhost:3000/"
    mail(:to => offer.email, :subject => "Köszönjük árajánlat kérését!")
  end

  def send_to_marketing(offer)
    @offer = offer
    mail(:to => "oladi.peter@globomax.hu", :subject => "Árajánlat kérés érkezett a terméktámogatás oldalról!")
  end

end
