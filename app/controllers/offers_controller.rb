# encoding: utf-8
class OffersController < ApplicationController

  before_filter :authenticate_admin!, :except => ['new', 'create', 'message']
  layout "offer"

  def list
    @offers = Offer.find(:all)
    render :layout => 'contact'
  end

  def new
    @offer = Offer.new
  end

  def create
    @offer = Offer.new(params[:offer])
    if @offer.save
         OfferMailer.thankyou(@offer).deliver
         OfferMailer.send_to_marketing(@offer).deliver
         redirect_to successfully_offer_path
    else
        render :action => "new"
    end
  end

  def message
  end

end
