class DockingStation
  def release_bike
    if @bike.nil?
    raise "No bikes available."  # Guard condition
    else
    Bike.new
  end
  end
  def dock_bike(bike_56)
    @bike = bike_56
  end
  attr_reader :bike
end
