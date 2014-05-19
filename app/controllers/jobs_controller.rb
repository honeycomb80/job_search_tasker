class JobsController < ApplicationController


	def index	
	end

	def new
	end

	def create
	end

	def edit
	end

	def show
	end

	def update
	end

	def destroy
	end

	def results
		pub_id = 2935344926324915
		job_description = params[:results][:job_desc].gsub(" ", "+")
		job_location = params[:results][:job_loc].gsub(" ", "+")
		results = Typhoeus.get("http://api.indeed.com/ads/apisearch?publisher=#{pub_id}&q=#{job_description}&l=#{job_location}&v=2")
		job_response = Hash.from_xml(results.body)
		# binding.pry
		@search_results = job_response["response"]["results"]["result"]
		# binding.pry
	end


	private
		def job_params
			params.require(:job).permit(:jobtitle, :company, :formatted_location, :snippet, :url, :lat, :long, :jobkey)
		end

end