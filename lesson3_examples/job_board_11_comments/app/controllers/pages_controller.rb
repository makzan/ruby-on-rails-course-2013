class PagesController < ApplicationController
  def index
    @jobs = Job.order("id desc").limit(3)
  end
end
