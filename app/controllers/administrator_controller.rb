class AdministratorController < ApplicationController

  before_filter :authenticate_admin!
  layout "administrator"

  def index
    @administrators = Admin.find(:all)
    # @administrators = Admin.where('admins.id != 1') # Minden admin kiveve a super
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
        redirect_to administrator_path, :notice => 'Advice was successfully updated.'
      else
        render :action => "edit"
      end
  end

  def destroy
    @admin = Admin.find(params[:id])
    if @admin.id == 1
      redirect_to administrator_path, :notice => 'Cannot delete the main admin.'
    else
      @admin.destroy
      redirect_to administrator_path, :notice => 'Admin was successfully deleted.'
    end
  end

end
