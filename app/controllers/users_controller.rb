class UsersController < ApplicationController
  def new
    @user = User.new
  end

  def create
    @user = User.new
    @user["first_name"] = params["user"]["first_name"]
    @user["last_name"] = params["user"]["last_name"]
    @user["email"] = params["user"]["email"]
    # TODO: encrypt user's password "at rest"
    @user["password"] = BCrypt::Password.create(params["user"]["password"])
    @user.save
    redirect_to "/posts"
  end
end
