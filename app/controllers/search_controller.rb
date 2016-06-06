class SearchController < ApplicationController

def index
  zip = params[:zip]
  connection = Faraday.new(url: "")
  response = connection.get ""
  binding.pry
  response.body
end

end