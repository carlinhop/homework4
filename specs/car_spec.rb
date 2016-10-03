require('minitest/autorun')
require('minitest/rg')
require_relative('../car.rb')
require_relative('../engine.rb')

class TestCar < MiniTest::Test
  def setup
    @engine1 = Engine.new("gasoline")
    @car1 = Car.new(@engine1, fuel = 100, speed = 0)
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
    assert_equal(95,@car1.fuel)
  end

  def test_brake
    @car1.break
    speed_new = @car1.speed
    assert_equal(0,speed_new)
  end

end

