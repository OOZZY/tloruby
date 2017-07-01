require 'minitest/autorun'
require 'tlo/statistics'

EPSILON = Float::EPSILON

describe Tlo::Statistics do
  before do
    @statistics = Tlo::Statistics::Statistics.new
  end

  describe 'Statistics initialize' do
    it 'should initialize statistics' do
      assert_in_delta(0, @statistics.size, EPSILON)
      assert_nil(@statistics.sum)
      assert_nil(@statistics.mean)
      assert_nil(@statistics.min)
      assert_nil(@statistics.max)
      assert_nil(@statistics.range)
      assert_nil(@statistics.variance)
      assert_nil(@statistics.stddeviation)
    end
  end

  describe 'Statistics add' do
    it 'should update statistics over one call' do
      @statistics.add(50.0)
      assert_in_delta(1, @statistics.size, EPSILON)
      assert_in_delta(50, @statistics.sum, EPSILON)
      assert_in_delta(50, @statistics.mean, EPSILON)
      assert_in_delta(50, @statistics.min, EPSILON)
      assert_in_delta(50, @statistics.max, EPSILON)
      assert_in_delta(0, @statistics.range, EPSILON)
      assert_in_delta(0, @statistics.variance, EPSILON)
      assert_in_delta(0, @statistics.stddeviation, EPSILON)
    end

    it 'should update statistics over multiple calls' do
      @statistics.add(50.0)
      @statistics.add(100.0)
      assert_in_delta(2, @statistics.size, EPSILON)
      assert_in_delta(150, @statistics.sum, EPSILON)
      assert_in_delta(75, @statistics.mean, EPSILON)
      assert_in_delta(50, @statistics.min, EPSILON)
      assert_in_delta(100, @statistics.max, EPSILON)
      assert_in_delta(50, @statistics.range, EPSILON)
      assert_in_delta(625, @statistics.variance, EPSILON)
      assert_in_delta(25, @statistics.stddeviation, EPSILON)
    end
  end
end
