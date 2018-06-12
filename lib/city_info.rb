require 'httparty'
require 'json'


class SingleCityWeatherInfo
  include HTTParty

  base_uri 'api.openweathermap.org/data/2.5/'

  def get_single_city(id)
    @single_city_data = JSON.parse(self.class.get("/data/2.5/weather?id=#{id}&appid=670ef980b9c60be8fb16e57edc0852e7").body)
  end

end

p cityData = SingleCityWeatherInfo.new.get_single_city(707860)
