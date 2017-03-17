class DockingStation
    attr_reader :bike_rack, :capacity
    attr_writer :capacity

DEFAULT_CAPACITY = 20

def initialize(capacity = DEFAULT_CAPACITY)
  @bike_rack = []
  @capacity = capacity
end

  def release_bike
    if empty?
    raise "No bikes available."  # Guard condition
    else
    bike_rack.pop
  end

  end
  def dock_bike(bike_56)
    if full?
    raise "Docking station is full"
    else
    bike_rack << bike_56
  end
end

private
def full?
  true if bike_rack.count >= capacity
end

def empty?
  true if bike_rack.empty?
end

end
