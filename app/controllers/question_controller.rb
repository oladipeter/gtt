class QuestionController < ApplicationController

  before_filter :authenticate_admin!, :except => [:save, :index]
  layout "questions", :except => :show #same as the offer

  def index # Only view
  end

  def show
    @questions = Question.find(:all)
    render :layout => 'contact'
  end

  # Ajax request
  def show_details
     @question_detail = Question.find(params[:id])
     respond_to do |format|
       format.js # Must create show_details.js
     end
  end

  def save
    @question = Question.new(params[:question])
      if @question.save
         render :json => {:success => true}
      else
        @error_message = @question.errors[:email]
        render :json => {:failure => true, :message => @error_message}
      end
  end

end
