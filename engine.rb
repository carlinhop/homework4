class Engine
  attr_reader :type
  
  def values
    if @type == "gasoline"
      @values = {acceleration: 5, fuel_expenditure: -10}
    end
  end

  def initialize(type)
    @type = type

    values()
  end


end
