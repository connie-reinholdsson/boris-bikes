require 'docking_station.rb'

describe DockingStation do
  it { is_expected.to respond_to :release_bike}

  it 'gets a bike from docking station and expects it to be working' do
    bike_56 = subject.release_bike
    expect(bike_56).to be_working
  end
end
