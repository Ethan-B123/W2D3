require "rspec"
require "array"

describe Array do
  describe "#my_uniq" do
    let(:arr) { [1,1,2,2] }
    it "returns unique elements in order of appearance" do
      expect(arr.my_uniq).to eq([1,2])
    end
  end

  describe "#two_sum" do
    let(:arr) { [-1, 0, 2, -2, 1] }
    it "finds positions where the elements at those positions sum to zero" do
      expect(arr.two_sum).to eq([[0, 4], [2, 3]])
    end
  end

  describe "::my_transpose" do
    let(:arr) {[
    [0, 1, 2],
    [3, 4, 5],
    [6, 7, 8]
  ]}
    it "convert between row and column representations" do
      expect(Array.my_transpose(arr)).to eq([[0, 3, 6], [1, 4, 7], [2, 5, 8]])
    end
  end

  describe "::stock_picker" do
    let(:arr) {[6,1,2,3,2,4,5,1]}
    #result = Array.stock_picker(arr)
    it "picks the most profitable buy/sell pair of days" do
      expect(Array.stock_picker(arr)).to eq([1,6])
    end
    it "buys before it sells" do
      result = Array.stock_picker(arr)
      expect(result[0] < result[1]).to be true
    end
  end
end
