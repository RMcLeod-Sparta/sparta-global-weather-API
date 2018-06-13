require 'httparty'
require 'json'


class SingleCityWeatherInfo
  include HTTParty

  base_uri 'api.openweathermap.org/data/2.5'

  def get_single_city(id)
  p  @single_city_data = JSON.parse(self.class.get("/weather?id=#{id}&appid=67ee1f4684f3bd86406f16e274ad06b3").body)
  end

  def get_coord
    @single_city_data['coord']
  end

  def get_coord_lon
    @single_city_data['coord']['lon']
  end

  def get_coord_lat
    @single_city_data['coord']['lat']
  end

  def get_cat_code
    @single_city_data['cod']
  end

  def get_weather
    @single_city_data['weather']
  end

  def get_main_info
    @single_city_data['main']
  end

  def get_name
    @single_city_data['name']
  end

  def get_description
    @single_city_data['weather'][0]['description']
  end

  def get_708546
    JSON.parse(self.class.get("/weather?id=708546&appid=67ee1f4684f3bd86406f16e274ad06b3").body)['name']
  end

  def get_temp
    @single_city_data['main']['temp']
  end

  def get_sea_level
    @single_city_data['main']['sea_level']
  end

  def get_wind_speed
    @single_city_data['wind']['speed']
  end

  def get_clouds_all
    @single_city_data['clouds']['all']
  end

  def get_country_letters
    @single_city_data['sys']['country'].length
  end


end
