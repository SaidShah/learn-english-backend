class AuthController < ApplicationController

  def show
    user = User.find(JWT.decode(request.authorization, "SECRET")[0]["user_id"])
    render json: {user: user, jwt: request.authorization}
  end

  private

  def userParams

  end

end
