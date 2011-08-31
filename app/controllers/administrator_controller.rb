# encoding: utf-8
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
    # Ha az adminisztrátor id-ja nem egyenlő 1-el vagyis nem foadminisztrator, illetve a bejelentkezett felhasznalo id-ja nem
    # egyezik meg a parameterben atadottal akkor nincs joga modositani az adott fiokot.

    unless ( @admin.id == current_admin.id ) || ( current_admin.id == 1)
     redirect_to administrator_path, :notice => 'Próbálkozz a saját fiókoddal!'
    end

  end

  def create
    @admin = Admin.new(params[:admin])
      if @admin.save
        redirect_to administrator_path, :notice => 'Az adminisztrátor sikeresen létrejött!'
      else
        redirect_to administrator_path, :notice => 'Ellenőrizd a mezőket!'
      end
  end

  def update
    @admin = Admin.find(params[:id])
      if @admin.update_attributes(params[:admin])
        redirect_to administrator_path, :notice => 'Az adminisztrátor adatlapját sikeresen módosítottad!'
      else
        render :action => "edit"
      end
  end

  def destroy
    @admin = Admin.find(params[:id])
    if @admin.id == 1
      redirect_to administrator_path, :notice => 'A fő adminisztrátort nem tudod törölni!'
    elsif current_admin.id != @admin.id
      redirect_to administrator_path, :notice => 'Csak a saját fiókod tudod inaktívvá tenni!'
    else
      # @admin.destroy
      redirect_to administrator_path, :notice => 'Az adminisztrátor fiókja sikeresen inaktivvá vált!'
    end
  end

end
