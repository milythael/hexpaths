require 'hex_tile'
RSpec.describe HexTile do
  describe "Blank Hex Tile" do
    let(:blank) { HexTile.new }
    it "has no paths" do
      blank.paths.length == 0
    end

    it "has 6 sides" do
      blank.sides.length == 6
    end
  end
end
