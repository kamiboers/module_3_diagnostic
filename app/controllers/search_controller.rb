class SearchController < ApplicationController

def index
  zip = params[:zip]
  binding.pry
  connection = Faraday.new(url: "https://api.data.gov/nrel/alt-fuel-stations/v1.json?limit=10&api_key=#{NREL_KEY}")
  response = connection.get "/nearest", {format: 'json', location: zip}
  response.body
end

end