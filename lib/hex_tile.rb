require 'tile'
class HexTile < Tile
  def initialize
    super
    @sides = [nil, nil, nil, nil, nil, nil]
  end
end
