class QuotesController < ApplicationController
	def index
		@quotes = Quote.all
	end

	def show
		@quote = Quotes.find(params[:id])
	end

	def new
		@quote = Quote.new
	end
	
	def edit
		@quote = Quote.find(params[:id])
	end

	def create
		@quote = Quote.new(params[:quote])
	
		if @quote.save
			redirect_to @quote
		else
			render 'new'
		end
	end
end
