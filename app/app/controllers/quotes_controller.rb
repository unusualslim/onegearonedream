class QuotesController < ApplicationController
	http_basic_authenticate_with name: "admin", password: "trueblue",
  	except: [:index, :show]
	
	def index
		@quotes = Quote.all
	end

	def show
		@quote = Quote.find(params[:id])
	end

	def new
		@quote = Quote.new
	end
	
	def edit
		@quote = Quote.find(params[:id])
	end

	def create
		@quote = Quote.new(quote_params)
	
		if @quote.save
			redirect_to @quote
		else
			render 'new'
		end
	end
	
	def update
		@quote = Quote.find(params[:id])
		
		if @quote.update(quote_params)
			redirect_to @quote
		else
			ender 'edit'
		end
	end
	
	def destroy
		@quote = Quote.find(params[:id])
		@quote.destroy
		
		redirect_to quotes_path
	end
	def find_by_time
		time = Time.new
  		time = time.strftime("%Y-%m-%d")
  	
  		@quote = Quote.find_by day: time
	end
		
	private
		def quote_params
			params.require(:quote).permit(:context, :author, :day)
		end

end
