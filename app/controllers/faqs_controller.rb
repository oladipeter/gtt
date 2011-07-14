# encoding: utf-8
class FaqsController < ApplicationController

  before_filter :authenticate_admin!
  layout "contact"

  def index
    @faqs = Faq.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @faqs }
    end
  end

  # GET /faqs/1
  # GET /faqs/1.xml
  def show
    @faq = Faq.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @faq }
    end
  end

  # GET /faqs/new
  # GET /faqs/new.xml
  def new
    @faq = Faq.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @faq }
    end
  end

  # GET /faqs/1/edit
  def edit
    @faq = Faq.find(params[:id])
  end

  # POST /faqs
  # POST /faqs.xml
  def create
    @faq = Faq.new(params[:faq])
      if @faq.save
        redirect_to faqs_path, :notice => "Sikeresen létrehoztad a kérdést!"
      else
        render :action => "new"
      end
  end

  # PUT /faqs/1
  # PUT /faqs/1.xml
  def update
    @faq = Faq.find(params[:id])
      if @faq.update_attributes(params[:faq])
        redirect_to faqs_path, :notice => "Sikeresen módosítottad a kérdést!"
      else
        render :action => "edit"
      end
  end

  # DELETE /faqs/1
  # DELETE /faqs/1.xml
  def destroy
    @faq = Faq.find(params[:id])
    @faq.destroy

    respond_to do |format|
      format.html { redirect_to(faqs_url) }
      format.xml  { head :ok }
    end
  end
end
