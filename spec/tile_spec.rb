require 'tile'
RSpec.describe Tile do
  describe "Blank Tile" do
    let(:blank_tile) { Tile.new }
    it "has no paths" do
      blank_tile.paths.length == 0
    end
  end
end
