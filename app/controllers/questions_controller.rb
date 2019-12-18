class QuestionsController < ApplicationController
  before_action :set_user

  def index
   
  end

  def new
    @questions = Question.order("RAND()").limit(10)
    gon.questions = @questions
  end

  private
  def set_user
    @user = User.find_by(id: current_user.id)
  end
end
