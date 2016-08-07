require 'hex_tile'
RSpec.describe HexTile do
  describe "blank hex tile" do
    let(:blank) { HexTile.new }
    it "has no paths" do
      expect(blank.paths.length).to eq 0
    end

    it "has 6 sides" do
      expect(blank.sides.length).to eq 6
    end
  end

  describe "elbow" do
    let(:elbow) { HexTile.elbow }

    it "top right is connected" do
      expect(elbow.side(:top_right).connected).to be true
    end

    it "right is connected" do
      expect(elbow.side(:right).connected).to be true
    end
  end
end
