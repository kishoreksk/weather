require 'net/http'
class HomeController < ApplicationController
  def index

    url =  "https://api.openweathermap.org/data/2.5/weather?lat=13.0827&lon=80.2707&units=imperial&appid=8ec8ac51d1ee77208f4db2f60691bf4a"
    uri = URI(url)
    res = Net::HTTP.get_response(uri)
    @data = JSON.parse(res.body)
  end
end
