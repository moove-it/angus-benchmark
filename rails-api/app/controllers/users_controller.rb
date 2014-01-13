class UsersController < ApplicationController

  def index
    @users = users_business.all

    render json: @users, each_serializer: UserSerializer
  end

  private

  def users_business
    @users_business ||= Business::Users.new
  end

end