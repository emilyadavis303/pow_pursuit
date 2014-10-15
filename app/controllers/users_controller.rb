class UsersController < ApplicationController
  before_action :set_user, only: [:show, :edit, :update]

  def show
    @user      = current_user
    @favorites = @user.resorts
  end

  def edit
  end

  def update
    if @user.update(user_params)
      favorite_resorts = params[:favorites][:resort_ids]
      favorite_resorts.delete_if { |r| r == "" }

      favorite_resorts.each do
        |fr| @user.favorites.create(resort_id: fr.to_i)
      end

      flash[:success] = "User profile updated!"
      redirect_to user_path(@user)
    else
      flash[:error] = "Something went wrong! Please try again."
      render :edit
    end
  end

  def tweet

  end

  private

  def user_params
    params.require(:user).permit( :name,
                                  :email,
                                  :city,
                                  :fave_one,
                                  :fave_two,
                                  :fave_three,
                                  favorites: :resort_ids)
  end

  def set_user
    @user = current_user
  end
end
