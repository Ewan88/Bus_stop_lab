class Bus


  # attr_accessor :name, :type, :breed, :price

  def initialize(route_nunber, destination)
    @route_nunber = route_nunber
    @destination = destination
    @passengers = []
  end

 def drive
   return "Brum brum"
 end


 def passenger_count()
  return @passengers.count()
 end

def pick_up(passenger)
  @passengers.push(passenger)
end


def drop_off
  @passengers.pop
end


def empty
  @passengers.clear
end


def pick_up_from_stop(busstop)
  for person in busstop.queue()
    pick_up(person)
  end
    busstop.queue.clear

end



end
