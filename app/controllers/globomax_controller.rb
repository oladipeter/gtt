class GlobomaxController < ApplicationController

  # public Globomax website controller

  before_filter :content_init

  layout "globomax"

  def content_init
    @about_us = Aboutus.find(1)
    @advices = Advice.find(:all) # Hírek
    @articles = Article.find(:all, :order => "created_at DESC") # Cikkek
    @commercial = Commercial.find(1) # Reklámok
  end

  def index
    render :layout => "globomax_index"
  end

  def website_article
    @article = Article.find(params[:id])
  end

  def website_advice
    @advice = Advice.find(params[:id])
  end

  def show_commercial
   @commercial = Commercial.find_by_position(params[:position])
  end

  def contact_us
    @contactus = Contactus.find(1)
  end

  def contacts
    @contacts = Contact.find(:all)
    render :layout => "globomax_employees"
  end

  def products
    @products = System.find(:all, :order => "position ASC" )
    render :layout => "globomax_employees"
  end

  def references
    @reference = Reference.find(1)
  end



end
