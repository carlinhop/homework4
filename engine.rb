class Engine
  attr_reader :type
  
  def values
    if @type == "gasoline"
      @values = {acceleration: 10, fuel_expenditure: -5}
    else
      @values = {acceleration: 25, fuel_expenditure: -10}
    end

  end

  def initialize(type)
    @type = type

    values()
  end


end
