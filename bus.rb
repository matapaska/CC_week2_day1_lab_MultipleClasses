class Bus
attr_reader :route_number, :destination, :passengers


def initialize(route_number, destination)
  @route_number = route_number
  @destination = destination
  @passengers = []
end

def drive()
  return "Brum brum"
end

def number_of_passengers()
  @passengers.size()
end

def add_passenger(passenger)
  @passengers.push(passenger)
end

def remove_passenger(passenger)
  @passengers.delete(passenger)
end

def remove_all_passengers()
  @passengers.clear
end
end
