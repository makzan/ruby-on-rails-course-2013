class Photo < ActiveRecord::Base
  attr_accessible :title, :file

  has_attached_file :file, styles: { medium: "300x300>", thumb: "100x100>" }, default_url: "/images/:style/missing.png"
end
