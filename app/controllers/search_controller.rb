class SearchController < ApplicationController

def index
  zip = params[:zip]
  response = HTTParty.get("http://developer.nrel.gov/api/alt-fuel-stations/v1/nearest?format=json&limit=10&api_key=#{ENV['NREL_KEY']}&location=#{zip}&fuel_type=ELEC,LPG")
  @results = JSON.parse(response.body)["fuel_stations"]
end

end