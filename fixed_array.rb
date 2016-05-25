
class FixedArray
  attr_accessor :size
  def initialize(size)
    @size = size
    @array = []
    size.times {@array << nil}
  end

  def get(index)
    if index >= @size
      raise "OutOfBoundsException"
    else
      return @array[index]
    end
  end

  def set(index, element)
    if index >= @size
      raise "OutOfBoundsException"
    else
      @array[index] = element
    end
  end

  def fill_array
    @size.times { |x| @array[x] = rand(20) }
  end
end

array = FixedArray.new(rand(50))
array.fill_array
array.get(array.size+3)
