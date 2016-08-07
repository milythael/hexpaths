require 'hex_side'
RSpec.describe HexSide do
  describe "top right hex side" do
    let(:top_right) { HexSide.new(0) }
    it "should be in the correct position" do
      expect(top_right.position).to eq 0
    end

    it "should not be connected" do
      expect(top_right.connected).to be false
    end
  end

  describe "created with invalid position" do
    it "6 should raise an error" do
      expect { HexSide.new(6) }.to raise_error(ArgumentError)
    end

    it "-1 should raise an error" do
      expect { HexSide.new(-1) }.to raise_error(ArgumentError)
    end
  end
end
