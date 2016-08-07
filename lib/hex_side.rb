require 'side'
class HexSide < Side
  attr_reader :position, :connected
  def initialize(position, connected = false)
    super()

    if position.is_a? Integer
      raise ArgumentError.new("invalid position") if (position > 5) || (position < 0)
    elsif position.is_a? Symbol
      raise ArgumentError.new("invalid position name") unless position = side_names.find_index(position)
    else
      raise ArgumentError.new("position should be an index or named side")
    end

    @position = position
    @connected = connected
  end

  def self.side_names
    %i[top_right right bottom_right bottom_left left top_left]
  end

  def side_names
    self.class.side_names
  end
end
