class UserPhotosController < ApplicationController
  def new
    @photo = UserPhoto.new
  end

  def create
    @photo = current_user.user_photos.create(photo_params)

    if @photo.save
      redirect_to user_path(current_user)
      flash[:notice] = "Your Photo Was Uploaded!"
    else
      redirect_to root_path
      flash[:notice] = "Oops! Something went wrong!"
    end
  end

  private

  def photo_params
    params.require(:user_photo).permit(:photo, :photo_id, :user_id)
  end
end
