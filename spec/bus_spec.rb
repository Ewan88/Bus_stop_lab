require("minitest/autorun")
require("minitest/rg")

require_relative("../Bus")
require_relative("../BusStop")
require_relative("../Person")

class TestBus < MiniTest::Test

  def setup
      @route_nunber = 22
      @destination = "Glasgow"
      @bus = Bus.new(@route_nunber, @destination)

      @person1 = Person.new("York", 22)
      @person2 = Person.new("Sam", 21)
      @busstop = BusStop.new("Swansi")
    end


def test_drive
  # bus = Bus.new(22, "Glasgow")
  assert_equal("Brum brum",@bus.drive)
end


def test_passenger_count
  assert_equal(0, @bus.passenger_count)
end


def test_pick_up
  @bus.pick_up(@person1)
  assert_equal(1, @bus.passenger_count)
end


def test_drop_off
  @bus.pick_up(@person1)
  @bus.drop_off
  assert_equal(0, @bus.passenger_count)
end


def test_empty_the_bus
  @bus.pick_up(@person1)
  @bus.pick_up(@person2)
  @bus.empty
  assert_equal(0, @bus.passenger_count)
end

def test_fill_the_bus
  @busstop = BusStop.new("Amazing Bus")
  @busstop.add_to_queue(@person1)
  @busstop.add_to_queue(@person2)
  @bus.pick_up_from_stop(@busstop)
  assert_equal(2, @bus.passenger_count())
  assert_equal(0, @busstop.queue.length())
end


# def test_pick_up_from_stop__multiple_people()
#   @stop1 = BusStop.new("Elm Row")
#   @stop1.add_to_queue(@passenger1)
#   @stop1.add_to_queue(@passenger2)
#   @bus.pick_up_from_stop(@stop1)
#   assert_equal(2, @bus.passenger_count())
#   assert_equal(0, @stop1.queue_length())
# end





end
