require 'httparty'
require 'json'

class RandomIdGenerator
  include HTTParty

  def get_all_ids
    @allCityIds = YAML.load_file('lib/resources/city_id.yml')
  end

  def get_rand_id
    @randomCityId = YAML.load_file('lib/resources/city_id.yml').sample
  end

  def get_id_length
    @randomCityId.to_s.length
  end

end
