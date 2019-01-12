class AuthController < ApplicationController

  def create
    user = User.find_by(username: userParams[:username])
    if user && user.authenticate(userParams[:password])
        token = JWT.encode({user_id: user.id,}, "SECRET")
        render json: {user: user, jwt: token}
      else
        render json: {user: {}}, status: 422
    end
  end

  def show
    user = User.find(JWT.decode(request.authorization, "SECRET")[0]["user_id"])
    render json: {user: user, jwt: request.authorization}
  end

  private

  def userParams
    params.require(:user).permit(:username, :password)
  end

end
