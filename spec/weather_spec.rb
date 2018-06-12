require 'spec_helper'

describe WeatherMapInfo do

  before(:all) do
    @random_id = WeatherMapInfo.new.get_id.get_rand_id
    @random_city = WeatherMapInfo.new.get_city_info.get_single_city(@random_id)
  end

  it 'should have and id that is an integer' do
    expect(@random_id).to be_kind_of Integer
  end


end
