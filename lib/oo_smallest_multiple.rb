class SmallestMultiple
  attr_reader :array, :number

  def initialize(input)
    @array = (1..input).to_a
    @number = input
  end

  def lcm
    counter = 1
    index = 0

    until index == @array.length
      if (@number*counter) % @array[index] == 0
        index += 1
      elsif (@number*counter) % @array[index] != 0
        counter += 1
        index = 0
      end
    end
    return @number*counter
  end
end
