require_relative '../fixed_array'

describe FixedArray do
  describe "#new" do
    it "makes a new object with space for 128 elements by default" do
      array = FixedArray.new
      expect(array.size).to eq 16
    end

    it "makes a new object with space for the specified number of elements" do
      size = 128
      array = FixedArray.new(size)
      expect(array.size).to eq size
    end
  end

  describe "#get" do
    it "returns the value at a specific position in the array" do
      array = FixedArray.new
      expect(array.get(0)).to eq nil
    end

    it "raises IndexOutOfBoundsError if specified position is outside the array" do
      array = FixedArray.new(16)
      expect { array.get(16) }.to raise_error(IndexOutOfBoundsError)
      expect { array.get(-1) }.to raise_error(IndexOutOfBoundsError)
    end
  end

  describe "#set" do
    it "sets the value at a specific position in the array" do
      array = FixedArray.new
      array.set(0, 42)
      expect(array.get(0)).to eq 42
    end
    it "raises IndexOutOfBoundsError if specified position is outside the array" do
      array = FixedArray.new(16)
      expect { array.set(16, 42) }.to raise_error(IndexOutOfBoundsError)
      expect { array.set(-1, 42) }.to raise_error(IndexOutOfBoundsError)
    end
  end
end
