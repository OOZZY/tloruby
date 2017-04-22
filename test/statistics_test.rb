require 'minitest/autorun'
require 'tlo/statistics'

describe Tlo::Statistics do
  describe 'Statistics initialize' do
    it 'should initialize statistics' do
      statistics = Tlo::Statistics::Statistics.new
      assert_equal(0, statistics.size)
      assert_nil(statistics.sum)
      assert_nil(statistics.mean)
      assert_nil(statistics.min)
      assert_nil(statistics.max)
      assert_nil(statistics.range)
      assert_nil(statistics.variance)
      assert_nil(statistics.stddeviation)
    end
  end

  describe 'Statistics add' do
    it 'should update statistics over one call' do
      statistics = Tlo::Statistics::Statistics.new
      statistics.add(50.0)
      assert_equal(1, statistics.size)
      assert_equal(50, statistics.sum)
      assert_equal(50, statistics.mean)
      assert_equal(50, statistics.min)
      assert_equal(50, statistics.max)
      assert_equal(0, statistics.range)
      assert_equal(0, statistics.variance)
      assert_equal(0, statistics.stddeviation)
    end

    it 'should update statistics over multiple calls' do
      statistics = Tlo::Statistics::Statistics.new
      statistics.add(50.0)
      statistics.add(100.0)
      assert_equal(2, statistics.size)
      assert_equal(150, statistics.sum)
      assert_equal(75, statistics.mean)
      assert_equal(50, statistics.min)
      assert_equal(100, statistics.max)
      assert_equal(50, statistics.range)
      assert_equal(625, statistics.variance)
      assert_equal(25, statistics.stddeviation)
    end
  end
end
