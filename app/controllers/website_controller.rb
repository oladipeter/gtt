# encoding: utf-8
class WebsiteController < ApplicationController

  layout "website_backend"

  def admin
  end

  # -------------------------------------------------------------------------------------------------------------------
  #                                                 ABOUT US
  # -------------------------------------------------------------------------------------------------------------------

  def about_us
    @aboutus = Aboutus.find(1)
  end

  def edit_about_us
   @aboutus = Aboutus.find(params[:id])
  end

  def update_about_us
    @aboutus = Aboutus.find(params[:id])
      if @aboutus.update_attributes(params[:aboutus])
        redirect_to website_admin_path, :notice => "Sikeresen módosítottad a bemutatkozást!"
      else
        render :action => "edit_about_us"
      end
  end

  # -------------------------------------------------------------------------------------------------------------------
  #                                                 CONTACT
  # -------------------------------------------------------------------------------------------------------------------

  def contact_us
    @contactus = Contactus.find(1)
  end

  def edit_contact_us
   @contactus = Contactus.find(params[:id])
  end

  def update_contact_us
    @contactus = Contactus.find(params[:id])
      if @contactus.update_attributes(params[:contactus])
        redirect_to website_admin_path, :notice => "Sikeresen módosítottad az elérhetőségeket!"
      else
        render :action => "edit_contact_us"
      end
  end


end
