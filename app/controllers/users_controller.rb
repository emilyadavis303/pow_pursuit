class UsersController < ApplicationController
  before_action :set_user, only: [:show, :edit, :update]

  def show
    @user     = current_user
    @fave_one = @user.fave_one
  end

  def edit
  end

  def update
    if @user.update(user_params)
      flash[:success] = "User profile updated!"
      redirect_to user_path(@user)
    else
      flash[:error] = "Something went wrong! Please try again."
      render :edit
    end
  end

  private

  def user_params
    params.require(:user).permit( :name,
                                  :email,
                                  :city,
                                  :fave_one,
                                  :fave_two,
                                  :fave_three)
  end

  def set_user
    @user = current_user
  end
end
