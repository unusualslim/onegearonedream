class HomeController < ApplicationController
  def index
  	time = Time.new
  	time = time.strftime("%Y-%m-%d")
  end
  
end
