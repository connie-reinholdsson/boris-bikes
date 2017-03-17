class Bike
  attr_accessor :status

  def initialize
    @status = true
  end

  def report_broken
    @status = false
  end

  def working?
    if @status == true
    true
    else
    false
    end
  end
end
