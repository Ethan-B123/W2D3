require 'rspec'
require 'hanoi'

describe Hanoi do
  subject(:game) { Hanoi.new }
  describe "#initialize" do

    let(:towers) { game.towers }
    it "has an array containing 3 towers" do
      expect(towers.length).to eq(3)
      expect(towers[0].class).to be(Array)
    end

    it "first tower is [3,2,1]" do
      expect(towers[0]).to eq([3,2,1])
    end

    it "other towers are empty" do
      expect(towers[1]).to eq([])
      expect(towers[2]).to eq([])
    end

  end


  describe "#move" do

    it "takes an array of two integers" do
      expect { game.move([0, 1]) }.to_not raise_error()
    end

    context "move is invalid" do
      it "rasies an error if move is out of range" do
        expect { game.move([0, 5]) }.to raise_error("move is out of range")
      end

      it "raises an error if player takes from empty tower" do
        expect { game.move([1, 2]) }.to raise_error("stack is empty")
      end

      it "raises an error if player puts large on small" do
        game.move([0,1])
        expect { game.move([0, 1]) }.to raise_error("disk too large")
      end
    end

    context "move is valid" do
      it "moves a disk" do
        game.move([0,1])
        expect(game.towers).to eq([[3,2],[1],[]])
      end
    end

  end

  describe "won?" do
    it "returns true when game is over" do
      game.towers = [[],[],[3,2,1]]
      expect(game.won?).to be true
      game.towers = [[],[3,2,1],[]]
      expect(game.won?).to be true
    end
    it "returns false when game is not over" do
      expect(game.won?).to be false
      game.move([0, 1])
      expect(game.won?).to be false
    end
  end
end
