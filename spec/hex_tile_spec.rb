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

    it "bottom right is not connected" do
      expect(elbow.side(:bottom_right).connected).to be false
    end

    it "bottom left is not connected" do
      expect(elbow.side(:bottom_left).connected).to be false
    end

    it "left is not connected" do
      expect(elbow.side(:left).connected).to be false
    end

    it "top left is not connected" do
      expect(elbow.side(:top_left).connected).to be false
    end
  end

  describe "bend" do
    let(:bend) { HexTile.bend }

    it "top right is connected" do
      expect(bend.side(:top_right).connected).to be true
    end

    it "right is not connected" do
      expect(bend.side(:right).connected).to be false
    end

    it "bottom right is connected" do
      expect(bend.side(:bottom_right).connected).to be true
    end

    it "bottom left is not connected" do
      expect(bend.side(:bottom_left).connected).to be false
    end

    it "left is not connected" do
      expect(bend.side(:left).connected).to be false
    end

    it "top left is not connected" do
      expect(bend.side(:top_left).connected).to be false
    end
  end

  describe "straight" do
    let(:straight) { HexTile.straight }

    it "top right is connected" do
      expect(straight.side(:top_right).connected).to be true
    end

    it "right is not connected" do
      expect(straight.side(:right).connected).to be false
    end

    it "bottom right is not connected" do
      expect(straight.side(:bottom_right).connected).to be false
    end

    it "bottom left is connected" do
      expect(straight.side(:bottom_left).connected).to be true
    end

    it "left is not connected" do
      expect(straight.side(:left).connected).to be false
    end

    it "top left is not connected" do
      expect(straight.side(:top_left).connected).to be false
    end
  end
end
