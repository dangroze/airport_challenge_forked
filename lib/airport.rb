require_relative 'weather'
class Airport
  def initialize(weather: Weather.new)
    @weather = weather
    @planes = []
  end

  def land(plane)
    raise 'Stormy weather!' if stormy?
    raise 'Airport Full!' if @planes.count >= 1
    @planes << plane
  end

  def take_off
    raise 'Stormy weather!' if stormy?
    @planes.pop
  end

  def stormy?
    @weather.stormy?
  end
end
