module PhotoHelper
  def absolute_photo_url(photo, style=nil)
    request.protocol + request.host_with_port + photo.file.url(style)
  end
end
