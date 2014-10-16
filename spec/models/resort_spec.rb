require 'rails_helper'

RSpec.describe Resort, :type => :model do
  it 'is valid' do
    resort = Resort.create( name: "Breck",
                            snotel_station: "michigan_creek",
                            lat: 39.642676,
                            lng: -106.036945
                            )
    expect(resort).to be_valid
  end

  it 'is not valid' do
    resort = Resort.create( name: "Breck",
                            snotel_station: "michigan_creek",
                            lat: 39.642676,
                            lng: nil
                            )

    expect(resort).not_to be_valid
  end

  it 'has a default daily snowfall of zero' do
    resort = Resort.create

    expect(resort.daily_snowfall).to eq 0
  end

  it 'has a default three day snowfall of zero' do
    resort = Resort.create

    expect(resort.three_day_snowfall).to eq 0
  end

  it 'has a default seven day snowfall of zero' do
    resort = Resort.create

    expect(resort.seven_day_snowfall).to eq 0
  end
end
