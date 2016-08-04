class UsersController < ApplicationController
  def all_users
    @users = User.all
  end

  def edit
    @user = current_user
  end

end
