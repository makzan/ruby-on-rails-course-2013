json.data do |json|
  json.id @album.id
  json.title @album.title
  json.created_at @album.created_at
  json.link album_url(@album)

  # user
  json.user do |json|
    json.id @album.user.id
    json.email @album.user.email
  end

  # photos
  json.photos @album.photos do |json, photo|
    json.partial! photo
  end
end
