require 'docking_station.rb'

describe DockingStation do
  it { is_expected.to respond_to :release_bike}

  it 'gets a bike from docking station and expects it to be working' do
    bike_56 = Bike.new
    expect(bike_56).to be_working
  end
  it 'checks if DockingStation instance responds to dock_bike method.' do
  expect(subject).to respond_to :dock_bike #It (the station_LB should respond to the method :dock_bike)
end
  it 'checks that station_LB responds to dock_bike method with 1 argument' do
    expect(subject).to respond_to(:dock_bike).with(1).argument
end
 it 'station_LB.dock_bike(bike_56) to return an instance variable which stores bike_56' do
  bike_56 = Bike.new #Instead of magically creating a bike from DockingStation, we create a bike from the class.
  subject.dock_bike(bike_56)
  expect(subject.bike_rack).to eq [bike_56]
  end

  it 'raise Exception when user tries to release bike and there are no bikes docked at that station' do
  expect { subject.release_bike }.to raise_error("No bikes available.")
end


  it 'raises Exception when user tries to dock a bike to a station that is full' do
    subject.capacity.times {subject.dock_bike Bike.new } #Fill up the bike rack with number of bikes.
    expect { subject.dock_bike(Bike.new) }.to raise_error("Docking station is full")
  end

  describe "#Initiazation" do
    it 'creates stations with a default capacity of 20' do
    expect(subject.capacity).to eq DockingStation::DEFAULT_CAPACITY
  end

    it "allows engineers to reassign capacity" do
      n = rand(0..100)
      subject.capacity = n
      expect(subject.capacity).to eq n
    end

    it "allows engineers to assign capacity when creating the station" do
    docking_station = DockingStation.new(50) #Creating 50 new spaces.
    50.times { docking_station.dock_bike(Bike.new) } #Adding 50 bikes.
    expect{ docking_station.dock_bike(Bike.new) }.to raise_error "Docking station is full" #Raise error when trying to add another one.
end
end

it "subject does not allows broken bikes to be released" do
bike1 = Bike.new
bike1.report_broken
subject.dock_bike(bike1)
expect {subject.release_bike}.to raise_error "This bike is broken."
end 
end

#subject is always BRAND NEW.
