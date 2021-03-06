class Photo < ActiveRecord::Base
  attr_accessible :title, :file, :album_id

  has_attached_file :file, styles: { cover: "1000x600#", medium: "300x300>", thumb: "100x100>" }, default_url: "/images/:style/missing.png"

  belongs_to :album
  belongs_to :user
end
