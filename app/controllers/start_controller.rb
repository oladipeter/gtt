class StartController < ApplicationController

  before_filter :authenticate_user!

  def index
    # Nezzuk meg hogy ez e az elso belepese a felhasznalonak, ha igen akkor kuldjon egy email-t az adminisztratornak
    # hogy, hogy allitsa be a jogosultsagait. Addig mig ez nem tortenik meg, a felhasznalo csak alap dolgokhoz
    # ferhet hozza

    # users table, sign_in_count = 1

    @user = User.new
    if current_user.sign_in_count == 1
      @sign_in = "Mail to Admin"
    else
      @sign_in = "NOOO Mail to Admin"
    end

  end

end
