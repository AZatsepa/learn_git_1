class UsersController < ApplicationController
<<<<<<< HEAD
=======
  def all_users
    @users = User.all
  end

  def edit
    @user = current_user
  end

>>>>>>> 8d3d4eb4114d6af641e39ee0bf1499233babfd6c
end
