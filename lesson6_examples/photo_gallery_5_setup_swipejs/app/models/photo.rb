class Photo < ActiveRecord::Base
  attr_accessible :title, :file, :album_id

  has_attached_file :file, styles: { medium: "300x300>", thumb: "100x100>" }, default_url: "/images/:style/missing.png"

  belongs_to :album
end
