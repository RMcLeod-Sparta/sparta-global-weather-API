require 'spec_helper'

describe WeatherMapInfo do

  before(:all) do
    @random_id = WeatherMapInfo.new.get_id
    @city_methods = WeatherMapInfo.new.get_city_info
    @random_city = @city_methods.get_single_city(@random_id.get_rand_id)
  end

  it 'should have and id that is an integer' do
    expect(@random_id.get_rand_id).to be_kind_of Integer
  end

  it 'should have an id that is between 5 and 7 charecters long' do
    expect(@random_id.get_id_length).to be_between(5, 7).inclusive
  end

  it 'should have the data for the citys weather in a hash' do
    expect(@random_city).to be_kind_of Hash
  end

  it 'should have a coordinates hash' do
    expect(@city_methods.get_coord).to be_kind_of Hash
  end

  it 'should have longitude float value' do
    expect(@city_methods.get_coord_lon).to be_kind_of Float
  end

  it 'should have latitude float value' do
    expect(@city_methods.get_coord_lat).to be_kind_of Float
  end






end
