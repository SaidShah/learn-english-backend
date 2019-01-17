class ScramblesController < ApplicationController

  def index
    allWords = Scramble.all
    render json: allWords
  end
end
