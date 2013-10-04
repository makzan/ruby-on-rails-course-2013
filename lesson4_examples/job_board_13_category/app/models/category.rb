class Category < ActiveRecord::Base
  attr_accessible :title

  has_many :jobs

  def to_s
    title
  end
end
