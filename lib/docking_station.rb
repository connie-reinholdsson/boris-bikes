class DockingStation
  def release_bike
    if @bike_rack.nil?
    raise "No bikes available."  # Guard condition
    else
    Bike.new
  end
  end
  def dock_bike(bike_56)
    if @bike_rack.nil?
      @bike_rack = bike_56
    else
      raise "Docking station is full"
    end
  end
  attr_reader :bike_rack
end
