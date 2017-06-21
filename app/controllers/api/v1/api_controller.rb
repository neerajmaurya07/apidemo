class Api::V1::ApiController < ApplicationController
	helper_method :recog
	include HTTParty

	def recog
    url = 'https://api.openalpr.com/v1/recognize'
    response.parsed_response
  end	
end
