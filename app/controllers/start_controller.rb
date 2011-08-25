class StartController < ApplicationController

  before_filter :authenticate_user!

  def index
    # Nezzuk meg hogy ez e az elso belepese a felhasznalonak, ha igen akkor kuldjon egy email-t az adminisztratornak
    # hogy, hogy allitsa be a jogosultsagait. Addig mig ez nem tortenik meg, a felhasznalo csak alap dolgokhoz
    # ferhet hozza

    # users table, sign_in_count = 1

    @user = User.new
    if current_user.sign_in_count == 1
      # Ha ez az elso bejelentkezese akkor => Mail to Admin
      admin_mail = "oladi.peter@globomax.hu"
      StartMailer.welcome_email(admin_mail).deliver
    else
      # No mail to admin
    end

    redirect_to frontend_index_path

  end

end
