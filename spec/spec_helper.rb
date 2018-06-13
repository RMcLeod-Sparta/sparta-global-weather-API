require 'rspec'
require_relative '../lib/WeatherSuperClass'
require_relative '../lib/random_id_generator'
require_relative '../lib/city_info'

RSpec.configure do |config|
  config.color = true
  config.formatter = :documentation
end
