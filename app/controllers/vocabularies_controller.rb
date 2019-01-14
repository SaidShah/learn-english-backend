class VocabulariesController < ApplicationController

  def index
    vocab = Vocabulary.all
    render json:{words:vocab}
  end
  
end
