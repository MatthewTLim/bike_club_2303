class Ride
  attr_reader :name, :distance, :loop, :terrain
  def initialize(attributes)
    @name = attributes[:name]
    @distance = attributes[:distance]
    @loop = attributes[:loop]
    @terrain = attributes[:terrain]
  end

  def loop?
    @loop
  end

  def total_distance
    if @loop == false
     @distance = @distance * 2
    else
      @distance
    end
  end

end


#The total distance is double the base distance if the ride is not a loop.