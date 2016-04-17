class HomeController < ApplicationController
	$time = Time.new
  	$time = time.strftime("%Y-%m-%d")

	
	def index
	@quote = Quote.new
	@quote = Quote.find_by day: $time
  end
  
end
