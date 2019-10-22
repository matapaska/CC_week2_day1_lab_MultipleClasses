require('minitest/autorun')
require('minitest/rg')
require_relative('../bus')
require_relative('../person')
require_relative('../bus_stop')

class BusStopTest < MiniTest::Test

  def setup()
    @bus_stop = BusStop.new("Usher Hall")
    @new_person = Person.new("Lion", "12")
  end

  def test_bus_stop_name
    assert_equal("Usher Hall",@bus_stop.name)
  end

 def test_queue_starts_at_zero
   assert_equal([], @bus_stop.queue)
 end

def test_number_of_passengers_in_queue
  assert_equal(0, @bus_stop.number_of_passengers_in_queue())
end


  def test_add_person_to_queue
    @bus_stop.add_person_to_queue(@new_person)
    assert_equal(1, @bus_stop.number_of_passengers_in_queue() )
  end

  def test_pick_up_from_stop
  @bus_stop.pick_up_from_stop
  assert_equal(1, @bus.number_of_passengers())
  assert_equal(0, @bus_stop.number_of_passengers_in_queue())
  end




  # @pet_shop.add_pet(@new_pet)
  #     assert_equal(3, @pet_shop.stock_count())
end
