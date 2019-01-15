class ExercisesController < ApplicationController

  def index
    byebug
  end


  private

  def user_params
    params.permit(:user_id)
  end

end
