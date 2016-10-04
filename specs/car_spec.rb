require('minitest/autorun')
require('minitest/rg')
require_relative('../car.rb')
require_relative('../engine.rb')

class TestCar < MiniTest::Test
  def setup
    @engine1 = Engine.new("gasoline")
    @car1 = Car.new(@engine1, fuel = 100, speed = 0)
    @engine2 = Engine.new("turbo")
    @car2 = Car.new(@engine2, fuel = 100, speed = 0)
  end 

  #ask question about this method
  # def can_accelerate?
  #   assert_equal(true, )
  # end

  def test_accelerate
    @car1.accelerate
    speed_new = @car1.speed
    fuel_new = @car1.fuel
    assert_equal(10, @car1.speed)
    assert_equal(95, @car1.fuel)
    #Tests using the second car
    @car2.accelerate
    speed_new = @car2.speed
    fuel_new = @car2.fuel
    assert_equal(25, @car2.speed)
    assert_equal(90,@car2.fuel)
  end

  def test_brake
    @car1.break
    speed_new = @car1.speed
    assert_equal(0,speed_new)
  end

end

