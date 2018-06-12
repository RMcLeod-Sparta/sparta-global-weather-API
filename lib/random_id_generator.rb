require 'httparty'
require 'json'
require 'yaml'

class RandomIdGenerator

  def get_all_ids
    YAML.load_file('lib/resources/city_id.yml')
  end

  def get_rand_id
    YAML.load_file('lib/resources/city_id.yml').sample
  end

end
