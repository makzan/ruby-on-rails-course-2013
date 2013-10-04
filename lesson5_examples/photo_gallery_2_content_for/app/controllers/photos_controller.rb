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
      redirect_to @photo
    else
      render :new
    end
  end

  def edit
    @photo = Photo.find params[:id]
  end

  def update
    @photo = Photo.find params[:id]

    if @photo.update_attributes params[:photo]
      redirect_to @photo
    else
      render :edit
    end
  end
end
