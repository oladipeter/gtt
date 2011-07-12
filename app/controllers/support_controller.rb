class SupportController < ApplicationController

  before_filter :authenticate_user!
  layout "support"

  def index

    # system parameter in session

    @system = System.find_by_title(params[:system])
    session[:current_system] = @system

    # articles lists

    @articles = Article.find(:all, :conditions => [ "system_id = ?", @system.id])

    # every support request

    @supmessages = Supmessage.find(:all, :conditions => ['user_id = ? AND system_title = ?',current_user.id, session[:current_system].title])


  end

end
