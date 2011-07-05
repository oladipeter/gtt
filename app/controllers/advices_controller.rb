# encoding: utf-8
class AdvicesController < ApplicationController

  before_filter :authenticate_admin!
  layout "contact" # Nem csinaltam uj layoutot, baki

  def index
    @advices = Advice.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @advices }
    end
  end

  # GET /advices/1
  # GET /advices/1.xml
  def show
    @advice = Advice.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @advice }
    end
  end

  # GET /advices/new
  # GET /advices/new.xml
  def new
    @advice = Advice.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @advice }
    end
  end

  # GET /advices/1/edit
  def edit
    @advice = Advice.find(params[:id])
  end

  # POST /advices
  # POST /advices.xml
  def create
    @advice = Advice.new(params[:advice])
      if @advice.save
         redirect_to advices_path, :notice => 'A hír sikeresen létrejött!'
      else
        render :action => "new"
      end
  end

  # PUT /advices/1
  # PUT /advices/1.xml
  def update
    @advice = Advice.find(params[:id])

      if @advice.update_attributes(params[:advice])
        redirect_to advices_path, :notice => 'A hír sikeresen módosítva lett!'
      else
        render :action => "edit"
      end

  end

  # DELETE /advices/1
  # DELETE /advices/1.xml
  def destroy
    @advice = Advice.find(params[:id])
    @advice.destroy

    respond_to do |format|
      format.html { redirect_to(advices_url) }
      format.xml  { head :ok }
    end
  end
end
