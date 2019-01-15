require("minitest/autorun")
require("minitest/rg")

require_relative("../BusStop")
require_relative("../Person")

class TestBusStop < MiniTest::Test

def setup
  @person1 = Person.new("York", 22)
  @person2 = Person.new("Sam", 21)
  @busstop = BusStop.new("Swansi")
end



def test_add_to_queue
  @busstop.add_to_queue(@person1)
  @busstop.add_to_queue(@person2)
  assert_equal(2, @busstop.queue.length)
end


end
