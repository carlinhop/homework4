# require_relative('engine')
class Car

  attr_reader :fuel, :speed

  def initialize(engine,fuel,speed)
    @fuel = fuel
    @speed = speed
    @engine = engine
  end

  def can_accelerate?()
    return @fuel >= @engine.values[:fuel_expenditure]? true : false
  end

  def accelerate()
   if can_accelerate?   
      @speed += 10
      @fuel -= 5
    else
      puts "Cannot go any faster!!!"
   end
  end

  def can_break?
    (@speed - 10) >= 0? true : false 
  end

  def break
    @speed -=10 if can_break?
  end

end