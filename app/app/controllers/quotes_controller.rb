class QuotesController < ApplicationController
	def show
		@quote = Quotes.find(params[:id])
	end

	def new
	end

	def create
		@quote = Quote.new(quote_params)
	
		@quote.save
		redirect_to @quote
	end

	private
		def quote_params
			params.require(:quote).permit(:quote, :author, :date)
		end
end
