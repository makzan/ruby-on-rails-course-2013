class PhotosController < ApplicationController

  before_filter :set_album

  before_filter :authenticate_user, only: [:new, :edit]

  def show
    @photo = @album.photos.find params[:id]
  end

  def new
    @photo = @album.photos.new
  end

  def create
    @photo = @album.photos.new params[:photo]
    @photo.album = @album
    @photo.user = current_user
    if @photo.save
      redirect_to @album
    else
      render :new
    end
  end

  def edit
    @photo = @album.photos.find params[:id]
  end

  def update
    @photo = @album.photos.find params[:id]
    if @photo.update_attributes params[:photo]
      redirect_to @album
    else
      render :edit
    end
  end

  private
  def set_album
    @album = Album.find params[:album_id]
  end

  def authenticate_user
    redirect_to new_user_session_url unless user_signed_in? and !@album.user.nil? and current_user == @album.user
  end

end
