class PhotosController < ApplicationController

  def show
    @photo = Photo.find params[:id]
  end

  def new
    @photo = Photo.new
  end

  def create
    @photo = Photo.new params[:photo]
    if @photo.save
      redirect_to @photo, notice: "Success"
    else
      flash[:alert] = "Error uploading photo."
      render :new
    end
  end
end
