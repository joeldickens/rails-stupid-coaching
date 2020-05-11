class QuestionsController < ApplicationController
  def ask
  end

  def answer
    @user_input = params[:person]
    if (params[:person] == "I am going to work")
      @answer = "Great!"
    elsif (params[:person].include? "?")
      @answer = "Silly question, get dressed and go to work!"
    else
      @answer = "I don't care, get dressed and go to work!"
    end
  end
end
