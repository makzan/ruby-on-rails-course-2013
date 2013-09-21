class Comment < ActiveRecord::Base
  attr_accessible :content, :name, :job_id

  belongs_to :job
end
