class ArchivController < ApplicationController

  layout "globomax"

  def index
    @articles = Article.find(:all, :conditions => { :position => ["5"] })
  end

end
