class HomeController < ApplicationController
  def index
  	time = Time.new
  	time = time.strftime("%Y-%m-%d")
  	
  	@quote = Quote.find_by day: time
  end
  
end
