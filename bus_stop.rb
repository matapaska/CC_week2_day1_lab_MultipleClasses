class BusStop
attr_reader :name, :queue


def initialize(name)
  @name = name
  @queue = []
end



def number_of_passengers_in_queue()
  @queue.size()
end

def add_person_to_queue(person)
  @queue.push(person)
  return @queue.size
end

end
