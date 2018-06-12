require_relative 'city_info'
require_relative 'random_id_generator'

class WeatherMapInfo

  def get_city_info
    SingleCityWeatherInfo.new
  end

  def get_id
    RandomIdGenerator.new
  end

end
