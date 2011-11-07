class ArchivController < ApplicationController

  layout "globomax"

  def index
    @pos1_articles = Article.find(:all, :conditions => { :position => ["1"] }, :order => "created_at DESC")
    @articles = Article.find(:all, :conditions => { :position => ["5"] })
  end

end
