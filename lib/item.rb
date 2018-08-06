class Item
  attr_reader :name, :unit, :weight

  def initialize name = nil, unit = nil, weight = nil
    @name = name
    @unit = unit
    @weight = weight
  end

  def convert_to unit
    case unit
      when 'k'
        @weight = @weight * 0.45359237
        @unit = 'k'
    end
  end

  def print_weight
    print "%-15s %f" % [@name, @weight] + " c \n"
  end
end