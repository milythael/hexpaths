require 'tile'
class HexTile < Tile
  def initialize(top_right = false, right = false, bottom_right = false, bottom_left = false, left = false, top_left = false)
    super()
    @sides = [
      HexSide.new(:top_right, top_right),
      HexSide.new(:right, right),
      HexSide.new(:bottom_right, bottom_right),
      HexSide.new(:bottom_left, bottom_left),
      HexSide.new(:left, left),
      HexSide.new(:top_left, top_left)
    ]
  end

  def self.elbow
    HexTile.new(true, true)
  end

  def self.bend
    HexTile.new(true, false, true)
  end

  def self.straight
    HexTile.new(true, false, false, true)
  end

  def self.side_names
    HexSide.side_names
  end

  def side_names
    self.class.side_names
  end

  def side(index)
    if index.is_a? Integer
      sides[index]
    else
      sides[side_names.find_index(index)]
    end
  end
end
