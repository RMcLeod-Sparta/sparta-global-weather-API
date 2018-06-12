require_relative 'city_info.rb'
require_relative 'random_id_generator'

class WeatherMapInfo

  def get_city_info
    SingleCityWeatherInfo.new
  end

  def get_id
    RandomIdGenerator.new
  end

end

stuff = WeatherMapInfo.new

things = stuff.get_id.get_rand_id
p stuff.get_city_info.get_single_city(things)
