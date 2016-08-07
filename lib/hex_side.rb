require 'side'
class HexSide < Side
  attr_reader :position, :connected
  def initialize(position, connected = false)
    raise ArgumentError.new("invalid position") if (position > 5) || (position < 0)
    super()
    @position = position
    @connected = connected
  end

  def self.side_names
    %i[top_right right bottom_right bottom_left left top_left]
  end
end
