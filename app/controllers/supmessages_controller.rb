class SupmessagesController < ApplicationController

  before_filter :authenticate_user!
  layout "support"

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
    @system = System.find(:first, :conditions => ["id = ?",session[:current_system].id])
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

    if @supmessage.user_id != current_user.id
      redirect_to supmessages_path, :notice => "Don't try to edit another users messages!!!"
    else
      @supmessage = Supmessage.find(params[:id])
    end

  end

  # POST /supmessages
  # POST /supmessages.xml
  def create
    @supmessage = Supmessage.new(params[:supmessage])

    respond_to do |format|
      if @supmessage.save
        format.html { redirect_to(@supmessage, :notice => 'Supmessage was successfully created.') }
        format.xml  { render :xml => @supmessage, :status => :created, :location => @supmessage }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @supmessage.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /supmessages/1
  # PUT /supmessages/1.xml
  def update
    @supmessage = Supmessage.find(params[:id])

    respond_to do |format|
      if @supmessage.update_attributes(params[:supmessage])
        format.html { redirect_to(@supmessage, :notice => 'Supmessage was successfully updated.') }
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
      redirect_to supmessages_path, :notice => "Don't try to delete another users messages!!!"
    else
      @supmessage.destroy
    end

    respond_to do |format|
      format.html { redirect_to(supmessages_url) }
      format.xml  { head :ok }
    end
  end
end
