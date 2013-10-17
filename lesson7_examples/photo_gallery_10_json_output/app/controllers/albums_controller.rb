class AlbumsController < ApplicationController
  before_filter :authenticate_user, only: [:new]

  def show
    @album = Album.find params[:id]
  end

  def new
    @album = Album.new
  end

  def create
    @album = Album.new params[:album]
    @album.user = current_user
    if @album.save
      redirect_to @album
    else
      render :new
    end
  end

  def authenticate_user
    redirect_to new_user_session_url unless user_signed_in?
  end
end
