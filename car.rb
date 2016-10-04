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
      @speed += @engine.values[:acceleration]
      @fuel += @engine.values[:fuel_expenditure]
    else
      puts "Cannot go any faster!!!"
   end
  end

  def can_break?
    @speed> 0? true : false 
  end

  def break
    if can_break? and  (@speed - 10 >=0)
      @speed -=10 
    else
      @speed = 0
    end
  end

end