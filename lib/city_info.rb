require 'httparty'
require 'json'


class SingleCityWeatherInfo
  include HTTParty

  base_uri 'api.openweathermap.org/data/2.5'

  def get_single_city(id)
  p  @single_city_data = JSON.parse(self.class.get("/weather?id=#{id}&appid=67ee1f4684f3bd86406f16e274ad06b3").body)
  end

  def get_coord
    @single_city_data["coord"]
  end


end
