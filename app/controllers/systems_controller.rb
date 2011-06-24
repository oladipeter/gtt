class SystemsController < ApplicationController

  before_filter :authenticate_admin!
  layout "contact"

  def index
    @systems = System.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @systems }
    end
  end

  # GET /systems/1
  # GET /systems/1.xml
  def show
    @system = System.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @system }
    end
  end

  # GET /systems/new
  # GET /systems/new.xml
  def new
    @system = System.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @system }
    end
  end

  # GET /systems/1/edit
  def edit
    @system = System.find(params[:id])
  end

  # POST /systems
  # POST /systems.xml
  def create
    @system = System.new(params[:system])

    respond_to do |format|
      if @system.save
        format.html { redirect_to(@system, :notice => 'System was successfully created.') }
        format.xml  { render :xml => @system, :status => :created, :location => @system }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @system.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /systems/1
  # PUT /systems/1.xml
  def update
    @system = System.find(params[:id])

      if @system.update_attributes(params[:system])
        redirect_to systems_path, :notice => 'System was successfully updated.'
      else
        render :action => "edit"
      end

  end

  # DELETE /systems/1
  # DELETE /systems/1.xml
  def destroy
    @system = System.find(params[:id])
    @system.destroy

    respond_to do |format|
      format.html { redirect_to(systems_url) }
      format.xml  { head :ok }
    end
  end
end
