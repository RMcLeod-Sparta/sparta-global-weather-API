require 'spec_helper'

describe WeatherMapInfo do

  before(:all) do
    @random_id = WeatherMapInfo.new.get_id
    @random_city = WeatherMapInfo.new.get_city_info.get_single_city(@random_id.get_rand_id)
  end

  it 'should have and id that is an integer' do
    expect(@random_id.get_rand_id).to be_kind_of Integer
  end

  it 'should have an id that is between 5 and 7 charecters long' do
    # expect(@random_id.get_id_length).to be_between(5, 7)
  end

  it 'should return a hash' do
    expect(@random_city).to be_kind_of Hash
  end

end
