class Job < ActiveRecord::Base
  attr_accessible :content, :title, :category
end
