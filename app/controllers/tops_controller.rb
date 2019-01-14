class TopsController < ApplicationController
  def index
    @questions = Question.all
  end
end
