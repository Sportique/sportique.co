class UsersController < ApplicationController
  def create
    @user = User.new(user_params)
    if @user.save
      redirect_to user_path @user
    else
      render 'welcome/index'
    end


  end

  private

  def user_params
    params.require(:user).permit(:email, :name, :favorite_sports_teams, :age, :gender)
  end
end
