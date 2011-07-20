# encoding: utf-8
class SupmessagesController < ApplicationController

  before_filter :authenticate_user!, :which_system
  layout "support"

  def which_system
    @system = System.find_by_title(params[:system])
  end

  def index
    @supmessages = Supmessage.all( :conditions => ["user_id = ? AND system_title = ?", current_user.id, session[:current_system].title])

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @supmessages }
    end
  end

  # GET /supmessages/1
  # GET /supmessages/1.xml
  def show
    @supmessage = Supmessage.find(params[:id])

     if @supmessage.user_id != current_user.id
      redirect_to supmessages_path, :notice => "You cannot see another users messages!!!"
    else
      @supmessage = Supmessage.find(params[:id])
      respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @supmessage }
    end
    end
  end

  # GET /supmessages/new
  # GET /supmessages/new.xml
  def new
    # Megnezem hogy eppen melyik rendszerrol van szo.. egy adott rendszert kell elkapni CSAK egyet, majd az ehhez tartozo adminokat nezzuk meg,
    # melyeket mar tombben fogunk megkapni

    @system = System.find(:first, :conditions => ["id = ?", @system.id])

    # Majd megnezem hogy melyik adminisztratorok tartoznak hozza a viewban..
    # itt csak osszekotom a tablakat, az adott rendszerhez mely adminok tartoznak (tomb)

    @admins = @system.admins
    @supmessage = Supmessage.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @supmessage }
    end
  end

  # GET /supmessages/1/edit
  def edit
    @supmessage = Supmessage.find(params[:id])
    @edit = true
    # Megnezem hogy eppen melyik rendszerrol van szo.. egy adott rendszert kell elkapni CSAK egyet, majd az ehhez tartozo adminokat nezzuk meg,
    # melyeket mar tombben fogunk megkapni
    @system = System.find(:first, :conditions => ["id = ?",session[:current_system].id])
    # Majd megnezem hogy melyik adminisztratorok tartoznak hozza a viewban..
    # itt csak osszekotom a tablakat, az adott rendszerhez mely adminok tartoznak (tomb)
    @admins = @system.admins

    if @supmessage.user_id != current_user.id
      redirect_to supmessages_path, :notice => "Ne próbálkoz más felhasználó adatainak szerkesztésével!!!"
    else
      @supmessage = Supmessage.find(params[:id])
    end

  end

  # POST /supmessages
  # POST /supmessages.xml
  def create
    @supmessage = Supmessage.new(params[:supmessage])
      if @supmessage.save
        redirect_to all_supmessages_path( :system => @supmessage.system_title ), :notice => 'A hibabejelentés sikeresen létrejött!'
      else
        render :action => "new"
      end

  end

  # PUT /supmessages/1
  # PUT /supmessages/1.xml
  def update
    @supmessage = Supmessage.find(params[:id])

    respond_to do |format|
      if @supmessage.update_attributes(params[:supmessage])
        format.html { redirect_to(@supmessage, :notice => 'A hibabejelentés sikeresen módosítva lett!') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @supmessage.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /supmessages/1
  # DELETE /supmessages/1.xml
  def destroy
    @supmessage = Supmessage.find(params[:id])

    if @supmessage.user_id != current_user.id
      redirect_to supmessages_path, :notice => "Ne próbálkozz más felhasználók törlésével, mert csúnya dolog!"
    else
      @supmessage.destroy
    end

    respond_to do |format|
      format.html { redirect_to(supmessages_url) }
      format.xml  { head :ok }
    end
  end
end
