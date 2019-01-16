class PartOfSpeechesController < ApplicationController


  def index
    @parts_of_speech = PartOfSpeech.all  
    render json: {parts_of_speech: @parts_of_speech}
  end

end
