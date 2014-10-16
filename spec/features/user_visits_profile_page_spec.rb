require 'rails_helper'
require 'helpers/authentication_helper'

RSpec.describe 'User Profile Page', :type => :feature do
  include OmniHelper

  before(:each) do
    mock_auth_hash
    @user = User.first
  end

  it 'displays a users favorite resorts' do
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
    Favorite.create( user_id: @user.id, resort_id: resort1.id )
    Favorite.create( user_id: @user.id, resort_id: resort2.id )
    Favorite.create( user_id: @user.id, resort_id: resort3.id )

    visit users_path(@user)

    expect(page).to have_content "Breck"
    expect(page).to have_content "Keystone"
    expect(page).to have_content "Vail"
  end
end
