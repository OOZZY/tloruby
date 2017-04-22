require 'minitest/autorun'
require 'tlo/math'

describe Tlo::Math do
  describe 'factorial' do
    it 'should return n! when given n' do
      assert_equal(1, Tlo::Math.factorial(0));
      assert_equal(1, Tlo::Math.factorial(1));
      assert_equal(2, Tlo::Math.factorial(2));
      assert_equal(6, Tlo::Math.factorial(3));
      assert_equal(24, Tlo::Math.factorial(4));
      assert_equal(120, Tlo::Math.factorial(5));
      assert_equal(720, Tlo::Math.factorial(6));
      assert_equal(5040, Tlo::Math.factorial(7));
      assert_equal(40320, Tlo::Math.factorial(8));
      assert_equal(362880, Tlo::Math.factorial(9));
      assert_equal(3628800, Tlo::Math.factorial(10));
    end
  end
end
