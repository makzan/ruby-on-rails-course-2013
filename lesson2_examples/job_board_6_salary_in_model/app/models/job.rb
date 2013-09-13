class Job < ActiveRecord::Base
  attr_accessible :content, :title, :category, :salary

  def self.min_salary(salary)
    where("salary >= ?", salary)
  end
end
