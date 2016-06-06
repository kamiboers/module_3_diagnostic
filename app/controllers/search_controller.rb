class SearchController < ApplicationController

def index
  zip = params[:zip]
  # response = HTTParty.get("https://api.data.gov/nrel/alt-fuel-stations/v1.json?limit=1&api_key=#{ENV['NREL_KEY']}")
  response = HTTParty.get("https://api.data.gov/nrel/alt-fuel-stations/api/v1/nearest.format?limit=10&api_key=#{ENV['NREL_KEY']}&location=#{zip}")

  # response = connection.get "/nearest", {format: 'json', location: zip, api_key: ENV['NREL_KEY']}
  binding.pry
  response.body
end

end