require('minitest/autorun')
require('minitest/rg')
require_relative('../bus')
require_relative('../person')

class BusTest < MiniTest::Test

  def setup()
    @bus = Bus.new("22", "Ocean Terminal")
  end

def test_bus_number
assert_equal("22",@bus.route_number)
end

def test_drive
 assert_equal("Brum brum", @bus.drive())
end

def test_passengers_starts_empty
  assert_equal([], @bus.passengers)
end

def test_how_many_passengers
assert_equal(0, @bus.number_of_passengers())
end

def test_add_passenger

@bus.add_passenger(@new_passenger)
assert_equal(1, @bus.number_of_passengers())
end


def test_remove_passenger
@bus.remove_passenger(@passengers)
assert_equal(0, @bus.number_of_passengers())
end

def test_remove_all_passengers
@bus.remove_all_passengers()
assert_equal(0, @bus.number_of_passengers())
end


end
