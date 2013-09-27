class Job < ActiveRecord::Base
  attr_accessible :content, :title, :category_id, :salary, :valid_till, :poster
  has_attached_file :poster, :styles => { :medium => "300x300>", :thumb => "100x100>" }, :default_url => "/images/:style/missing.png"

  belongs_to :category
  has_many :comments


  def self.min_salary(salary)
    where("salary >= ?", salary)
  end

  def self.still_valid
    where("valid_till >= ?", Date.current)
  end
end
