class PagesController < ApplicationController
  def index
    @slide_photos = Photo.limit(5)
    @photos = Photo.limit(10)
  end
end
