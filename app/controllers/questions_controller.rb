class QuestionsController < ApplicationController
  def index
    @questions = Question.all
  end

  def show
    @question = Question.includes(:topic).find_by(id: params[:id])
    @answers = @question.answers
  end
end
