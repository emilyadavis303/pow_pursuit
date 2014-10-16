require 'rails_helper'

RSpec.describe SnowfallsController, :type => :controller do
  describe 'Get #index' do
    it 'loads resorts sorted by snowfalls' do
      resort1 = Resort.create( name: "Breck",
                               snotel_station: "michigan_creek",
                               lat: 39.642676,
                               lng: -106.036945,
                               daily_snowfall: 2
                               )
      resort2 = Resort.create( name: "Keystone",
                               snotel_station: "michigan_creek",
                               lat: 39.642676,
                               lng: -106.036945,
                               daily_snowfall: 5
                               )
      resort3 = Resort.create( name: "Vail",
                               snotel_station: "michigan_creek",
                               lat: 39.642676,
                               lng: -106.036945,
                               daily_snowfall: 1
                               )

      get :index

      expect(assigns(:resorts)).to match_array([resort2, resort1, resort3])
    end
  end
end
