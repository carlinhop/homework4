class Engine
  attr_reader :type, :values

  def initialize(type)
    @type = type
    
    if @type == "gasoline"
      @values = {acceleration: 10, fuel_expenditure: -5}
    else
      @values = {acceleration: 25, fuel_expenditure: -10}
    end
  end

end
