#encoding: utf-8
class Uploader::StartController < ApplicationController

  def get_request
    # save to database
    @status = "A felhasználó át lett irányítva a feltöltő alkalmazáshoz!"
  end

  def start_upload
    # save to database
    @status = 'A felhasználó sikeresen elindította a feltöltést!'
  end

  def finished_upload
    # save to database
    @status = 'A felhasználó sikeresen befejezte a feltöltést!'
  end

end
