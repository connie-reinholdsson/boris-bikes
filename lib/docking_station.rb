class DockingStation
    attr_reader :bike_rack

def initialize
  @bike_rack = []
end

  def release_bike
    if @bike_rack.empty?
    raise "No bikes available."  # Guard condition
    else
    @bike_rack.pop
  end

  end
  def dock_bike(bike_56)
    if @bike_rack.count < 20
      @bike_rack << bike_56
    else
      raise "Docking station is full"
    end
  end
end
