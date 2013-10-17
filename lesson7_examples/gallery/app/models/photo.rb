class Photo < ActiveRecord::Base
  attr_accessible :title, :image

  has_attached_file :image, :styles => { :medium => "300x300>", :thumb => "100x100>" }, :default_url => "/images/:style/missing.png"

  validates_attachment :image, presence: true, content_type: { content_type: ["image/jpg", "image/png"] }

end
