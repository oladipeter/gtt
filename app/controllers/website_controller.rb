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
        redirect_to edit_about_us_path, :notice => "Sikeresen módosítottad a bemutatkozást!"
      else
        render :action => "edit_about_us"
      end
  end

  # -------------------------------------------------------------------------------------------------------------------
  #                                                 CONTACT
  # -------------------------------------------------------------------------------------------------------------------

  def edit_contact_us
   @contactus = Contactus.find(params[:id])
  end

  def update_contact_us
    @contactus = Contactus.find(params[:id])
      if @contactus.update_attributes(params[:contactus])
        redirect_to edit_contact_us_path, :notice => "Sikeresen módosítottad az elérhetőségeket!"
      else
        render :action => "edit_contact_us"
      end
  end

  # -------------------------------------------------------------------------------------------------------------------
  #                                                 REFERENCES
  # -------------------------------------------------------------------------------------------------------------------

  def edit_reference
   @reference = Reference.find(params[:id])
  end

  def update_reference
    @reference = Reference.find(params[:id])
      if @reference.update_attributes(params[:reference])
        redirect_to edit_reference_path, :notice => "Sikeresen módosítottad az elérhetőségeket!"
      else
        render :action => "edit_references"
      end
  end

  # -------------------------------------------------------------------------------------------------------------------
  #                                                 COMMERCIALS
  # -------------------------------------------------------------------------------------------------------------------

  def edit_commercial
   @commercial = Commercial.find(params[:id])
  end

  def update_commercial
    @commercial = Commercial.find(params[:id])
      if @commercial.update_attributes(params[:commercial])
        redirect_to edit_commercial_path, :notice => "Sikeresen módosítottad az reklámokat!"
      else
        render :action => "edit_commercial"
      end
  end


end
