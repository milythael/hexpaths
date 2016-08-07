require 'side'
class HexSide < Side
  attr_reader :position, :connected
  def initialize(position, connected = false)
    super()
    @position = position
    @connected = connected
  end
end
