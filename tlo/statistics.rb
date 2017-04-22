module Tlo
module Statistics
class Statistics
  def initialize()
    @size = 0
    @sum = nil
    @mean = nil
    @min = nil
    @max = nil
    @range = nil
    @sumsquares = nil
    @meansquares = nil
    @variance = nil
    @stddeviation = nil
  end

  def add(num)
    @size += 1
    if @size == 1
      @sum = num
      @mean = num
      @min = num
      @max = num
      @range = 0
      @sumsquares = num * num
      @meansquares = @sumsquares
      @variance = 0
      @stddeviation = 0
    else
      @sum += num
      @mean = @sum / @size
      if @min > num
        @min = num
      end
      if @max < num
        @max = num
      end
      @range = @max - @min
      @sumsquares += num * num
      @meansquares = @sumsquares / @size
      @variance = @meansquares - @mean * @mean
      @stddeviation = ::Math.sqrt(@variance)
    end
  end

  attr_reader :size
  attr_reader :sum
  attr_reader :mean
  attr_reader :min
  attr_reader :max
  attr_reader :range
  attr_reader :variance
  attr_reader :stddeviation
end
end
end
