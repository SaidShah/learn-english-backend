class UsersController < ApplicationController

  def index
    render json: User.all
  end

  def create
    @newUser = User.create(signUpParams)
    if @newUser.valid?
      token = JWT.encode({user_id: @newUser.id}, "SECRET")
      render json: {user: @newUser, jwt:token}
    else
      render json: {error: "CANT CREATE USER"}, status: 422
    end
  end

  def show

  end

  private

  def signUpParams
    params.require(:user).permit(:first_name, :last_name, :password, :age, :username)
  end

end
