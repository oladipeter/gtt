class ClientController < ApplicationController

  before_filter :authenticate_admin!
  layout "client"

  def new
    @user = User.new
  end

  def index
    @clients = User.find(:all)
    @number_of_clients = @clients.size
  end

  def edit
    @user = User.find(params[:id])
  end

  def create
    @user = User.new(params[:user])
      if @user.save
         redirect_to client_edit_path(@user), :notice => 'User was successfully created.'
      else
        render :action => "new"
      end
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
