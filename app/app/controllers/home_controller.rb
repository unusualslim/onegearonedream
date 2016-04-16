class HomeController < ApplicationController
  def index
  
  end
  
  def show_todays_quote
  	quotes= Quotes.new
  	quotes = Quote.find_by_day
  	
  end
end
