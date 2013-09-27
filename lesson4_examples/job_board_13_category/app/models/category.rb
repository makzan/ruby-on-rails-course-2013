class Category < ActiveRecord::Base
  attr_accessible :title

  has_many :job

  def to_s
    title
  end
end
