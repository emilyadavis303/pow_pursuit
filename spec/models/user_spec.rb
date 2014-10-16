require 'rails_helper'

RSpec.describe User, :type => :model do
  it 'has a favorite resort' do
    user   = User.create
    resort = Resort.create( name: "Breck",
                            snotel_station: "michigan_creek",
                            lat: 39.642676,
                            lng: -106.036945
                            )
    Favorite.create( user_id: user.id, resort_id: resort.id )

    expect(user.favorites.count).to eq 1
  end

  it 'has many favorite resorts' do
    user   = User.create
    resort1 = Resort.create( name: "Breck",
                             snotel_station: "michigan_creek",
                             lat: 39.642676,
                             lng: -106.036945
                             )
    resort2 = Resort.create( name: "Keystone",
                             snotel_station: "michigan_creek",
                             lat: 39.642676,
                             lng: -106.036945
                             )
    resort3 = Resort.create( name: "Vail",
                             snotel_station: "michigan_creek",
                             lat: 39.642676,
                             lng: -106.036945
                             )
    Favorite.create( user_id: user.id, resort_id: resort1.id )
    Favorite.create( user_id: user.id, resort_id: resort2.id )
    Favorite.create( user_id: user.id, resort_id: resort3.id )

    expect(user.favorites.count).to eq 3
  end

  it 'knows the names of its favorite resorts' do
    user   = User.create
    resort1 = Resort.create( name: "Breck",
                             snotel_station: "michigan_creek",
                             lat: 39.642676,
                             lng: -106.036945
                             )
    resort2 = Resort.create( name: "Keystone",
                             snotel_station: "michigan_creek",
                             lat: 39.642676,
                             lng: -106.036945
                             )
    resort3 = Resort.create( name: "Vail",
                             snotel_station: "michigan_creek",
                             lat: 39.642676,
                             lng: -106.036945
                             )
    Favorite.create( user_id: user.id, resort_id: resort1.id )
    Favorite.create( user_id: user.id, resort_id: resort2.id )
    Favorite.create( user_id: user.id, resort_id: resort3.id )

    faves = user.resorts.collect {|r| r.name }

    expect(faves).to eq ["Breck", "Keystone", "Vail"]
  end
end
