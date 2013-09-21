class Job < ActiveRecord::Base
  attr_accessible :content, :title, :category, :salary, :valid_till

  def self.min_salary(salary)
    where("salary >= ?", salary)
  end

  def self.still_valid
    where("valid_till >= ?", Date.current)
  end
end
