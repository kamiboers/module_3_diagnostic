class SearchController < ApplicationController

def index
  zip = params[:zip]
  connection = Faraday.new(url: "https://api.data.gov/nrel/alt-fuel-stations")
  binding.pry
  response = HTTParty.get('http://api.stackexchange.com/2.2/questions?site=stackoverflow')
  response = connection.get "/nearest", {format: 'json', location: zip, api_key: ENV['NREL_KEY']}
  binding.pry
  response.body
end

end