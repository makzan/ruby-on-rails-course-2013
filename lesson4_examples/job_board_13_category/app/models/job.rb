class Job < ActiveRecord::Base
  attr_accessible :content, :title, :category_id, :salary, :valid_till

  belongs_to :category
  has_many :comments


  def self.min_salary(salary)
    where("salary >= ?", salary)
  end

  def self.still_valid
    where("valid_till >= ?", Date.current)
  end
end
