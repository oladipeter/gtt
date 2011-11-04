# encoding: utf-8
class ArticlesController < ApplicationController

  before_filter :authenticate_admin!
  layout "contact"

  def index
    @articles = Article.all(:order => "created_at DESC")
  end

  # GET /articles/1
  # GET /articles/1.xml
  def show
    @article = Article.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @article }
    end
  end

  # GET /articles/new
  # GET /articles/new.xml
  def new
    @article = Article.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @article }
    end
  end

  # GET /articles/1/edit
  def edit
    @article = Article.find(params[:id])
  end

  # POST /articles
  # POST /articles.xml
  def create
    @article = Article.new(params[:article])
      if @article.save
         redirect_to articles_list_path, :notice => 'A cikk sikeresen létrejött!'
      else
        render :action => "new"
      end
  end

  # PUT /articles/1
  # PUT /articles/1.xml
  def update
    @article = Article.find(params[:id])

    if @article.update_attributes(params[:article])
        redirect_to articles_list_path, :notice => 'A cikk sikeresen módosítva lett!'
      else
        render :action => "edit"
      end

  end

  # DELETE /articles/1
  # DELETE /articles/1.xml
  def destroy
    @article = Article.find(params[:id])
    @article.destroy
    redirect_to articles_list_path, :notice => 'A cikk sikeresen törölve lett!'
  end

  def ordered_list
   if params[:sorted_position]
     position = params[:sorted_position]
     if position == "all"
       @articles = Article.all(:order => "created_at DESC")
     else
       @articles = Article.find(:all, :conditions => [ "position = ?", position], :order => "created_at DESC")
     end
   else
     @articles = Article.all(:order => "created_at DESC")
   end
  end

end
