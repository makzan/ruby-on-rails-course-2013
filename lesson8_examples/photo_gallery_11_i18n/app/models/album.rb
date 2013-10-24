class Album < ActiveRecord::Base
  attr_accessible :title

  has_many :photos
  belongs_to :user
end
