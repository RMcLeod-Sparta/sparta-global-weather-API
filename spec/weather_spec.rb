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

  it 'should have the data for the cities in a hash' do
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

  it 'should have a cat code of 200' do
    expect(@city_methods.get_cat_code).to eq 200
  end

  it 'should have a weather array' do
    expect(@city_methods.get_weather).to be_kind_of Array
  end

  it 'should have a main hash' do
    expect(@city_methods.get_main_info).to be_kind_of Hash
  end

  it 'should have a name that is a string' do
    expect(@city_methods.get_name).to be_kind_of String
  end

  it 'should have a description that is a string' do
    expect(@city_methods.get_description).to be_kind_of String
  end

  it 'should have the id for 708546 be for the city of Holubynka' do
    expect(@city_methods.get_708546).to eq 'Holubynka'
  end

  it 'should have a temperature that is a float' do
    expect(@city_methods.get_temp).to be_kind_of Float
  end

  it 'should have a sea level that is a float' do
    # expect(@city_methods.get_sea_level).to be_kind_of Float
    pending
  end

  it 'should have a wind speed that is a float' do
    expect(@city_methods.get_wind_speed).to be_kind_of Float
  end

  it 'should have a all clouds value that is a integer' do
    expect(@city_methods.get_clouds_all).to be_kind_of Integer
  end

  it 'should have two letters represent what country the city is in' do
    expect(@city_methods.get_country_letters).to eq 2
  end

  it 'should have 22634 different locations from which to draw from' do
    expect(@random_id.get_number_ids).to eq 22634
  end








end
