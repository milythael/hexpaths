require 'hex_tile'
RSpec.describe HexTile do
  describe "Blank Hex Tile" do
    let(:blank) { HexTile.new }
    it "has no paths" do
      expect(blank.paths.length).to eq 0
    end

    it "has 6 sides" do
      expect(blank.sides.length).to eq 6
    end
  end
end
