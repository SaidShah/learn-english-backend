class PartOfSpeech < ApplicationRecord

  def index
    @part_of_speeches = PartOfSpeech.all
    render json: {part_of_speeches: @part_of_speeches}
  end

end
