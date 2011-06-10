class AdministratorController < ApplicationController

  before_filter :authenticate_admin!
  layout "administrator"

  def index
    @administrators = Admin.find(:all)
    @number_of_administrators = @administrators.size
  end

  def new
    @admin = Admin.new
  end

  def edit
    @admin = Admin.find(params[:id])
  end

  def create
    @admin = Admin.new(params[:admin])
      if @admin.save
        redirect_to administrator_path, :notice => 'Admin was successfully created.'
      else
        redirect_to administrator_path, :notice => 'Check it the fields!'
      end
  end

  def update
    @admin = Admin.find(params[:id])
      if @admin.update_attributes(params[:admin])
        redirect_to admins_path, :notice => 'Advice was successfully updated.'
      else
        render :action => "edit"
      end
  end

  def destroy
    @admin = Admin.find(params[:id])
    @admin.destroy
    redirect_to admins_path
  end

end
