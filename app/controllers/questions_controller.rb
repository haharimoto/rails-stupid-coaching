class QuestionsController < ApplicationController
  def ask; end

  def answer
    # return value of the input that has this name answer
    # params[:answer] is user input
    if params[:answer] == 'I am going to work'
      # defined @message, variable view can access
      @message = 'Great!'
    elsif params[:answer].ends_with?('?')
      @message = 'Silly question, get dressed and go to work!'
    else
      @message = 'I don\'t care, get dressed and go to work!'
    end
  end
end
