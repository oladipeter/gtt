class ClientController < ApplicationController

  before_filter :authenticate_admin!
  layout "client"

  def index
    @clients =User.find(:all)
  end

  def edit
    @user = User.find(params[:id])
  end

  def update
    @user = User.find(params[:id])

      if @user.update_attributes(params[:user])
       redirect_to client_path, :notice => 'Advice was successfully updated.'
      else
       render :action => "edit"
      end
  end

end
