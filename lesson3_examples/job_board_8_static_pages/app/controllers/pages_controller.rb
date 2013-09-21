class PagesController < ApplicationController
  def index
    @jobs = Job.order("id desc").limit(3)
  end

  def about
  end

  def contact
  end

  def faq
  end
end
