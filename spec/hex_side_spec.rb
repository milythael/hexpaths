require 'hex_side'
RSpec.describe HexSide do
  describe "Top Right Hex Side" do
    let(:top_right) { HexSide.new(0) }
    it "should be in the correct position" do
      expect(top_right.position).to eq 0
    end
  end
end
