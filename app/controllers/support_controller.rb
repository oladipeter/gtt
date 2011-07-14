class SupportController < ApplicationController

  # Eloszor betoltom azt a metodust, amelyik letrehozza a session valtozot
  # Majd a tobbi metodust is. Erre azert van szukseg, mert az index metodus alatt szeretnem megjeleniteni a tobbi metodus tartalmat
  # es csak igy erem el oket. Ezutan letrehozom a kulonbozo metodusok partialjat a SHARED ala vegul pedig az index viewban lerenderelem oket.

  before_filter :authenticate_user!, :which_system, :articles, :faqs, :supmessages
  layout "support"

#  def create_session
#   @system = System.find_by_title(params[:system])
#   session[:current_system] = @system
#  end

  def which_system
    @system = System.find_by_title(params[:system])
  end

  def index
    #@system_infos = System.find
    @system_info = System.find(:first, :conditions => ["title = ?", @system.title])
    # render :text => "#{session[:current_system].title}"
    # @faqs = Faq.find(:all, :conditions => ['system_id = ?', session[:current_system].id], :limit => 2)
  end

  def articles
    # articles lists
    @articles = Article.find(:all, :conditions => [ "system_id = ?", @system.id], :limit => 2)
    @quantity_articles = Article.find(:all, :conditions => ["system_id =?",@system.id]).size
  end

  def supmessages
    # every support request
    @supmessages = Supmessage.find(:all, :conditions => ['user_id = ? AND system_title = ?',current_user.id, @system.title], :limit => 2)
    @quantity_supmessages = Supmessage.find(:all, :conditions => ['user_id = ?', current_user.id]).size
  end

  def faqs
  # faqs lists
    @faqs = Faq.find(:all, :conditions => ['system_id = ?', @system.id], :limit => 2)
    @quantity_faqs = Faq.find(:all, :conditions => ['system_id = ?', @system.id]).size
  end

  def all_articles
    @all_articles = Article.find(:all, :conditions => [ "system_id = ?", @system.id])
  end

  def all_supmessages
    # render :text => "#{session[:current_system].title}"
    @all_supmessages = Supmessage.find(:all, :conditions => ['user_id = ? AND system_title = ?',current_user.id, @system.title])
  end

  def all_faqs
    @all_faqs = Faq.find(:all, :conditions => ['system_id = ?', @system.id])
  end

end
